package product.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import product.model.service.ProductService;
import product.model.vo.Product;
import product.model.vo.ProductDetail;

/**
 * Servlet implementation class ProductInsertServlet
 */
@WebServlet("/pinsert")
public class ProductInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상품등록
		
		RequestDispatcher view = null;
		if(!ServletFileUpload.isMultipartContent(request)) {
			view = request.getRequestDispatcher("views/product/productError.jsp");
			request.setAttribute("message","form의 enctype 속성 사용 안 되었음.");
			view.forward(request, response);
		}
		
	
		int maxSize = 1024 * 1024 * 150;		

		 String root = request.getSession().getServletContext().getRealPath("/");
		
		 String savePath = root + "file/product";
	
		 MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			 
		 Product product = new Product();
		 product.setProductName(mrequest.getParameter("productname"));
		 product.setProductType(mrequest.getParameter("producttype"));
		 product.setBrand(mrequest.getParameter("brand"));
		 
		 String[] filenameArray = new String[50];
		 int index =0;
				 
         Enumeration fileNames = mrequest.getFileNames();        
         while(fileNames.hasMoreElements()) {        
        	 String parameter= (String)fileNames.nextElement();
        	 String filename = mrequest.getFilesystemName(parameter);     
        	 filenameArray[index++] = filename;
         }        
        
		 if(filenameArray[0] != null) {
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			 String rebrandImage = sdf.format(new java.sql.Date(System.currentTimeMillis())) +"."+filenameArray[0].substring(filenameArray[0].lastIndexOf(".")+1);
			 			
			 File brandImageFile= new File(savePath + "\\" + filenameArray[0]);
			 File rebrandImageFile = new File(savePath + "\\" + rebrandImage);
			 
			 if(!brandImageFile.renameTo(rebrandImageFile)) {
			
				 int read = -1;
				 byte[] buf = new byte[1024];
				 
				 FileInputStream fin = new FileInputStream(brandImageFile);
				 FileOutputStream fout = new FileOutputStream(rebrandImageFile);
				 
				 while((read = fin.read(buf,0,buf.length)) != -1) {
					 fout.write(buf, 0, read);
				 }
				 
				 fin.close();
				 fout.close();
				 brandImageFile.delete();
			 }
			 
			 product.setBrandImage(rebrandImage);
		 }
		 
	     product.setSeason(mrequest.getParameter("season"));
		 product.setSex(mrequest.getParameter("sex"));
		 product.setProductPrice(Integer.parseInt(mrequest.getParameter("productprice")));
		 product.setDiscountRate(Double.parseDouble(mrequest.getParameter("discountrate")));
		 
			String[] sizecategory = mrequest.getParameterValues("sizecategory");	
			product.setSizeCategory(String.join(",", sizecategory));
			String[] sizecontents = mrequest.getParameterValues("sizecontents");
		   product.setSizeContents(String.join(",", sizecontents));
		   product.setMoreInto(mrequest.getParameter("moreinfo"));	
		   
		  ProductService pservice = new ProductService();
		  int result1 = pservice.insertProduct(product);
		  
		  int productNo = pservice.getProductNo(mrequest.getParameter("productname"));
		 
		 String[] productcolor = mrequest.getParameterValues("productcolor");
		 String[] ssizequantity = mrequest.getParameterValues("ssizequantity");
		 String[] msizequantity = mrequest.getParameterValues("msizequantity");
		 String[] lsizequantity = mrequest.getParameterValues("lsizequantity");
		 String[] xlsizequantity = mrequest.getParameterValues("xlsizequantity");		
		 	 
		 int result2 = 0;
		 
		 for(int i=0; i<productcolor.length;i++) {
			ProductDetail productDetail = new ProductDetail();
			productDetail.setProductColor(productcolor[i]);
			
			 if(filenameArray[5*i+1] != null) {
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				 String reproductImage = sdf.format(new java.sql.Date(System.currentTimeMillis()))+(5*i+1) +"."+filenameArray[5*i+1].substring(filenameArray[5*i+1].lastIndexOf(".")+1);
				 			
				 File productImage1File= new File(savePath + "\\" + filenameArray[5*i+1]);
				 File reproductImage1File = new File(savePath + "\\" + reproductImage);
				 
				 if(!productImage1File.renameTo(reproductImage1File)) {
				
					 int read = -1;
					 byte[] buf = new byte[1024];
					 
					 FileInputStream fin = new FileInputStream(productImage1File);
					 FileOutputStream fout = new FileOutputStream(reproductImage1File);
					 
					 while((read = fin.read(buf,0,buf.length)) != -1) {
						 fout.write(buf, 0, read);
					 }
					 
					 fin.close();
					 fout.close();
					 productImage1File.delete();
				 }
				 
				 productDetail.setProductImage1(reproductImage);
			 }
		    
			 if(filenameArray[5*i+2] != null) {
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				 String reproductImage2 = sdf.format(new java.sql.Date(System.currentTimeMillis()))+(5*i+2)+"."+filenameArray[5*i+2].substring(filenameArray[5*i+2].lastIndexOf(".")+1);
				 			
				 File productImage2File= new File(savePath + "\\" + filenameArray[5*i+2]);
				 File reproductImage2File = new File(savePath + "\\" + reproductImage2);
				 
				 if(!productImage2File.renameTo(reproductImage2File)) {
				
					 int read = -1;
					 byte[] buf = new byte[1024];
					 
					 FileInputStream fin = new FileInputStream(productImage2File);
					 FileOutputStream fout = new FileOutputStream(reproductImage2File);
					 
					 while((read = fin.read(buf,0,buf.length)) != -1) {
						 fout.write(buf, 0, read);
					 }
					 
					 fin.close();
					 fout.close();
					 productImage2File.delete();
				 }
				 
				 productDetail.setProductImage2(reproductImage2);
			 }
			 
			 if(filenameArray[5*i+3] != null) {
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				 String reproductImage3 = sdf.format(new java.sql.Date(System.currentTimeMillis()))+(5*i+3)+"."+filenameArray[5*i+3].substring(filenameArray[5*i+3].lastIndexOf(".")+1);
				 			
				 File productImage3File= new File(savePath + "\\" + filenameArray[5*i+3]);
				 File reproductImage3File = new File(savePath + "\\" + reproductImage3);
				 
				 if(!productImage3File.renameTo(reproductImage3File)) {
				
					 int read = -1;
					 byte[] buf = new byte[1024];
					 
					 FileInputStream fin = new FileInputStream(productImage3File);
					 FileOutputStream fout = new FileOutputStream(reproductImage3File);
					 
					 while((read = fin.read(buf,0,buf.length)) != -1) {
						 fout.write(buf, 0, read);
					 }
					 
					 fin.close();
					 fout.close();
					 productImage3File.delete();
				 }
				 
				 productDetail.setProductImage3(reproductImage3);
			 }
			 
			 if(filenameArray[5*i+4] != null) {
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				 String reproductImage4 = sdf.format(new java.sql.Date(System.currentTimeMillis()))+(5*i+4)+"."+filenameArray[5*i+4].substring(filenameArray[i+4].lastIndexOf(".")+1);
				 			
				 File productImage4File= new File(savePath + "\\" + filenameArray[5*i+4]);
				 File reproductImage4File = new File(savePath + "\\" + reproductImage4);
				 
				 if(!productImage4File.renameTo(reproductImage4File)) {
				
					 int read = -1;
					 byte[] buf = new byte[1024];
					 
					 FileInputStream fin = new FileInputStream(productImage4File);
					 FileOutputStream fout = new FileOutputStream(reproductImage4File);
					 
					 while((read = fin.read(buf,0,buf.length)) != -1) {
						 fout.write(buf, 0, read);
					 }
					 
					 fin.close();
					 fout.close();
					 productImage4File.delete();
				 }
				 
				 productDetail.setProductImage4(reproductImage4);
			 }
			 
			 if(filenameArray[5*i+5] != null) {
				 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				 String reproductImage5 = sdf.format(new java.sql.Date(System.currentTimeMillis()))+(5*i+5)+"."+filenameArray[5*i+5].substring(filenameArray[5*i+5].lastIndexOf(".")+1);
				 			
				 File productImage5File= new File(savePath + "\\" + filenameArray[5*i+5]);
				 File reproductImage5File = new File(savePath + "\\" + reproductImage5);
				 
				 if(!productImage5File.renameTo(reproductImage5File)) {
				
					 int read = -1;
					 byte[] buf = new byte[1024];
					 
					 FileInputStream fin = new FileInputStream(productImage5File);
					 FileOutputStream fout = new FileOutputStream(reproductImage5File);
					 
					 while((read = fin.read(buf,0,buf.length)) != -1) {
						 fout.write(buf, 0, read);
					 }
					 
					 fin.close();
					 fout.close();
					 productImage5File.delete();
				 }
				 
				 productDetail.setProductImage5(reproductImage5);
			 }

			productDetail.setSsizeQuantity(Integer.parseInt(mrequest.getParameter("ssizequantity")));
			productDetail.setMsizeQuantity(Integer.parseInt(mrequest.getParameter("msizequantity")));	
			productDetail.setLsizeQuantity(Integer.parseInt(mrequest.getParameter("lsizequantity")));	
			productDetail.setXlsizeQuantity(Integer.parseInt(mrequest.getParameter("xlsizequantity")));		
			
			  result2 = pservice.insertProductDetail(productDetail, productNo);
		 }
		 
	
		 
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

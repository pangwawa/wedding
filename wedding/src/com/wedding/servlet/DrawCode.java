package com.wedding.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * Servlet implementation class DrawCode
 */
@WebServlet("/DrawCode")
public class DrawCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int  width=70;
	private static final int heigh=28;
	private static final int frontSize=15;
	private static final Color colors[]={Color.RED,Color.BLACK,Color.BLUE,Color.CYAN,Color.GREEN,
			Color.MAGENTA,Color.ORANGE,Color.PINK,Color.YELLOW};
	private static final String CODES="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    public DrawCode() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		char[] code=new char[4];
		BufferedImage image=new BufferedImage(width, heigh, BufferedImage.TYPE_INT_ARGB);
		Graphics graphics=image.getGraphics();
		graphics.setColor(Color.white);
		graphics.fillRect(0, 0, width, heigh);
		graphics.setFont(new Font("宋体",Font.BOLD,frontSize));
		Random random=new Random();
		for(int i=0;i<4;i++){
			int index=random.nextInt(CODES.length());
			char c=CODES.charAt(index);
			code[i]=c;
			graphics.setColor(colors[random.nextInt(colors.length)]);
			graphics.drawString(String.valueOf(c), i*frontSize+8, frontSize);
			//绘制干扰线条
			graphics.setColor(colors[random.nextInt(colors.length)]);
			graphics.drawLine(random.nextInt(width), random.nextInt(heigh), 
					random.nextInt(width), random.nextInt(heigh));
		}
		request.getSession().setAttribute("code", new String(code));
		ImageIO.write(image, "PNG", response.getOutputStream());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

package com.kckc.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
@Controller
public class FisController {
    @RequestMapping("/upload")
    public String fileUpload(@RequestParam("file") CommonsMultipartFile fis[] , HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        if (fis != null && fis.length > 0) {
            for (int i = 0; i < fis.length; i++) {
                CommonsMultipartFile cmpf = fis[i];

                String uploadFileName = cmpf.getOriginalFilename();
                //如果文件名为空，直接回到首页！
                if ("".equals(uploadFileName)) {
                    return "redirect:/login.jsp";
                }
                System.out.println("上传文件名 : " + uploadFileName);
                //String path = request.getServletContext().getRealPath("/upload");
                String path = request.getSession().getServletContext().getRealPath("/upload");
                File realPath = new File(path);
                if (!realPath.exists()) {
                    realPath.mkdir();
                }
                System.out.println("上传文件保存地址：" + realPath);
                InputStream is = cmpf.getInputStream();
                OutputStream os = new FileOutputStream(new File(realPath, uploadFileName));
                int len = 0;
                byte[] buffer = new byte[1024];
                while ((len = is.read(buffer)) != -1) {
                    os.write(buffer, 0, len);
                    os.flush();
                }
                os.close();
                is.close();

                response.setDateHeader("expires",-1);
                response.setHeader("Cache-Control","no-cache");
                response.setHeader("Pragma","no-cache");

            }
        }
        return "redirect:/info.jsp";
    }
}

# SWT browser

A simple proof of concept.

## Viewing HTML pages with SWT Browser widget

[http://www.eclipse.org/articles/Article-SWT-browser-widget/browser.html](http://www.eclipse.org/articles/Article-SWT-browser-widget/browser.html)

## Applet in SWT browser 

[http://www.eclipse.org/swt/faq.php#browserapplets](http://www.eclipse.org/swt/faq.php#browserapplets)

Q: Can I view Java applets in the SWT Browser?
A: Browser support for applets varies by platform:
Windows: As of Eclipse/SWT 3.5, applets can be viewed in a Browser if all of the following conditions are met:

1. For Browsers created with style SWT.NONE, the installed IE version is 7.0 or newer
2. For Browsers created with style SWT.MOZILLA, the installed XULRunner version is 1.9.2.x or 3.6.x
3. The installed Java plug-in is Sun JRE 1.6u10 or newer, with the Next Generation Java Plug-in enabled (this plug-in is enabled by default when the JRE is installed)
4. The application is launched with the same JRE that provides the installed Java plug-in
5. The application adds the JRE's plugin.jar, deploy.jar and javaws.jar jars to the JRE's boot classpath. For example, to launch eclipse: `eclipse -vmargs -Xbootclasspath/a:"C:\Program Files\Java\jre6\lib\plugin.jar;C:\Program Files\Java\jre6\lib\deploy.jar;C:\Program Files\Java\jre6\lib\javaws.jar"`

## Maven and SWT

[http://stackoverflow.com/a/9985222/11451](http://stackoverflow.com/a/9985222/11451)

[https://swt-repo.googlecode.com/svn/repo/](https://swt-repo.googlecode.com/svn/repo/)

To use it just put the following in your pom.xml:

    <repositories>
        <repository>
            <id>swt-repo</id>
            <url>https://swt-repo.googlecode.com/svn/repo/</url>
        </repository>
    </repositories>

Then you can just reference the SWT dependency relevant to your platform. For example:

    <dependency>
        <groupId>org.eclipse.swt</groupId>
        <artifactId>org.eclipse.swt.win32.win32.x86</artifactId>
        <version>4.3</version>
    </dependency>
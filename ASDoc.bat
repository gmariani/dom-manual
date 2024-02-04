REM https://developer.mozilla.org/En/DOM_Levels

@set asdoc_bin="C:\Program Files\Adobe\Flash Builder Beta\sdks\4.0.0.8441\bin\asdoc.exe"
@set mainTitle="DOM Reference Manual"
@set windowTitle="DOM Reference Manual"
@set footer="<![CDATA[&copy; 2009 Gabriel Mariani (<a href='http://blog.coursevector.com/'>http://blog.coursevector.com/</a>). All rights reserved.]]>"

@set src_path=./src/
@set doc_src=src
@set templates="./html src/templates/"
@set packageDetail="pkgDescription.xml"

%asdoc_bin% -source-path %src_path% -main-title %mainTitle% -window-title %windowTitle% -footer %footer% -doc-sources %doc_src% -output doc -templates-path %templates% -keep-xml -package-description-file %packageDetail% -date-in-footer

pause
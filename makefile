rgrep: rgrep/*.c strmat/bm.c strmat/strhe.c
	gcc main.c rgrep/rgrep.c -o rgrep

testConfig: unitTest/testConfig.c rgrep/*.c
	gcc rgrep/rgrep.c unitTest/testConfig.c -o testConfig
	
testDirFile: unitTest/testDirFile.c rgrep/*.c
	gcc rgrep/rgrep.c unitTest/testDirFile.c -o testDirFile	

testFileSearch: unitTest/testFileSearch.c rgrep/*.c strmat/bm.c strmat/strhe.c
	gcc rgrep/rgrep.c unitTest/testFileSearch.c -o testFileSearch
	
testReadRec: unitTest/testReadRec.c rgrep/*.c strmat/bm.c strmat/strhe.c
	gcc rgrep/rgrep.c unitTest/testReadRec.c -o testReadRec

testRecordSearch: unitTest/testRecordSearch.c rgrep/*.c strmat/bm.c strmat/strhe.c
	gcc rgrep/rgrep.c unitTest/testRecordSearch.c -o testRecordSearch

clean: 
	rm -f testConfig testDirFile testDirFile testFileSearch testReadRec testRecordSearch
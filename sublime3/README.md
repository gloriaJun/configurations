## 환경설정 파일 적용하기
#### Mac OS X
방법1) `User` 폴더를 기존 폴더 삭제 후 link를 걸어준다.
```
cd Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -rf User
ln -s [다운받은 경로]/User User
```

방법2) `User` 폴더를 복사한다.
```
cd Library/Application\ Support/Sublime\ Text\ 3/Packages/\
cp -R [다운받은 경로]/User/* User/ß
```
1.
```console
git init -b main

touch README.md

echo "Git demo repository" >> README.md

git add README.md

git commit -m "First commit"

(Crear repositorio manualmente desde github)

git remote add origin https://github.com/SergiVidal/git-exercises.git

git push -u origin main
```

2. 

```console
touch .gitignore
echo "*.sh" > .gitignore
```

3. 

```console
touch demo1.txt
touch demo2.txt

git add *.txt
```

4. 

```console
echo "abcd" > demo1.txt

git commit -m "Modified demo1.txt"
```

5. 

```console
echo "abcd" > demo2.txt

git add demo2.txt
git commit -m "Modified demo3.txt"
```

6. 

```console
git commit --amend
```

  *  (Modificar el mensaje)

7. 

```console

git checkout -b develop

touch script.sh
```

8. 

```console
chmod 700 script.sh
chmod +x script.sh
```

9. 

```console
git add .
git commit -m "Added script.sh"

git checkout main
git merge develop
```

10. 

```console
git push origin --all
```
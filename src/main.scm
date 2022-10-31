#lang typed/racket

;; 1 Quick Start
(struct pt ([x : Real] [y : Real]))

(: jwalsh/distance (-> pt pt Real))
(define (jwalsh/distance p1 p2)
  (sqrt (+ (sqr (- (pt-x p2) (pt-x p1))) (sqr (- (pt-y p2) (pt-y p1))))))

(quote (jwalsh/distance (pt 0 0) (pt 3.1415 2.7172)))

;; Trees and Recursion

;; 2.1 Datatypes and Unions
(struct leaf ([val : Number]))
(struct node ([left : Tree] [right : Tree]))
(define-type Tree (U leaf node))

(: jwalsh/tree-height (-> Tree Integer))
(define (jwalsh/tree-height t)
  (cond
    [(leaf? t) 1]
    [else (max (+ 1 (jwalsh/tree-height (node-left t))) (+ 1 (jwalsh/tree-height (node-right t))))]))

(: jwalsh/tree-sum (-> Tree Number))
(define (jwalsh/tree-sum t)
  (cond
    [(leaf? t) (leaf-val t)]
    [else (+ (jwalsh/tree-sum (node-left t)) (jwalsh/tree-sum (node-right t)))]))

(: jwalsh/tree-map (-> (-> Number Number) Tree Tree))
(define (jwalsh/tree-map f t)
  (cond
    [(leaf? t) (leaf (f (leaf-val t)))]
    [else (node (jwalsh/tree-map f (node-left t)) (jwalsh/tree-map f (node-right t)))]))

(quote (define my-tree (node (leaf 1) (node (leaf 2) (leaf 3))))
       (jwalsh/tree-height my-tree)
       (jwalsh/tree-sum my-tree)
       (jwalsh/tree-map (lambda (x) (* x x)) my-tree))

;; RacketCon 2022 samples
(: jwalsh/middle (-> (Listof Number) Number))
(define (jwalsh/middle l1)
  (define n (length l1))
  (list-ref l1 (quotient n 2)))

(: jwalsh/mean (-> (Listof Number) Number))
(define (jwalsh/mean l1)
  (define n (length l1))
  (define sum (foldl + 0 l1))
  (/ sum n))

(: jwalsh/median (-> (Listof Number) Number))
(define (jwalsh/median l1)
  (define l2 (sort < l1))
  (middle l2))

(: jwalsh/mode (-> (Listof Number) Number))
(define (jwalsh/mode l1)
  (define l2 (sort < l1))
  (define l3 (group-by (lambda (x y) (= x y)) l2))
  (define l4 (map (lambda (x) (cons (length x) (car x))) l3))
  (define l5 (sort (lambda (x y) (> (car x) (car y))) l4))
  (cdr (car l5)))

(: jwalsh/range (-> (Listof Number) Number))
(define (jwalsh/range l1)
  (define l2 (sort < l1))
  (- (car (last l2)) (car l2)))

(: jwalsh/variance (-> (Listof Number) Number))
(define (jwalsh/variance l1)
  (define n (length l1))
  (define m (mean l1))
  (define l2 (map (lambda (x) (- x m)) l1))
  (define l3 (map (lambda (x) (* x x)) l2))
  (define sum (foldl + 0 l3))
  (/ sum n))


(: jwalsh/standard-deviation (-> (Listof Number) Number))
(define (jwalsh/standard-deviation l1)
  (sqrt (variance l1)))

(: jwalsh/z-score (-> (Listof Number) Number Number))
(define (jwalsh/z-score l1 x)
  (define m (jwalsh/mean l1))
  (define s (jwalsh/standard-deviation l1))
  (/ (- x m) s))

(quote (define my-list (list 3 2 1 1))
       (jwalsh/middle my-list) ;; 2
       (jwalsh/mean my-list) ;; 1.75
       (jwalsh/median my-list) ;; 1.5
       (jwalsh/mode my-list) ;; 1
       (jwalsh/range my-list) ;; 2
       )

;; Sorting
(: jwalsh/quicksort (-> (Listof Number) (Listof Number)))
(define (jwalsh/quicksort l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([pivot (car l1)] [rest (cdr l1)])
       (append (jwalsh/quicksort (filter (lambda (x) (< x pivot)) rest))
               (cons pivot (jwalsh/quicksort (filter (lambda (x) (>= x pivot)) rest)))))]))

(: jwalsh/mergesort (-> (Listof Number) (Listof Number)))
(define (jwalsh/mergesort l1)
  (cond
    [(null? l1) '()]
    [(null? (cdr l1)) l1]
    [else
     (let ([l2 (split-at (quotient (length l1) 2) l1)])
       (merge (jwalsh/mergesort (car l2)) (jwalsh/mergesort (cdr l2))))]))

; Examples
;; review contracts and transitivity requirements for sort
(quote (define my-bad-sort-predicate (lambda (x y) (random 2)))
       (define my-bad-sort-predicate2 (lambda (x y) #f)))

;; Lists and Recursion
(: jwalsh/sum (-> (Listof Number) Number))
(define (jwalsh/sum l1)
  (cond
    [(null? l1) 0]
    [else (+ (car l1) (sum (cdr l1)))]))

(: jwalsh/product (-> (Listof Number) Number))
(define (jwalsh/product l1)
  (cond
    [(null? l1) 1]
    [else (* (car l1) (product (cdr l1)))]))

(: jwalsh/length (-> (Listof Number) Integer))
(define (jwalsh/length l1)
  (cond
    [(null? l1) 0]
    [else (+ 1 (length (cdr l1)))]))

(: jwalsh/append (-> (Listof Number) (Listof Number) (Listof Number)))
(define (jwalsh/append l1 l2)
  ) ;; TODO

(: jwalsh/reverse (-> (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/reverse l1)
  )

(: jwalsh/sort (-> (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/sort l1)
  )

(: jwalsh/filter (-> (-> Number Boolean) (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/filter f l1)
  )

(: jwalsh/map (-> (-> Number Number) (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/map f l1)
  )

(: jwalsh/foldl (-> (-> Number Number Number) Number (Listof Number) Number)) ;; TODO
(define (jwalsh/foldl f init l1)
  )

(: jwalsh/foldr (-> (-> Number Number Number) Number (Listof Number) Number)) ;; TODO
(define (jwalsh/foldr f init l1)
  )

(: jwalsh/zip (-> (Listof Number) (Listof Number) (Listof (Listof Number)))) ;; TODO
(define (jwalsh/zip l1 l2)
  )

(: jwalsh/unzip (-> (Listof (Listof Number)) (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/unzip l1)
  )

(: jwalsh/zip-with (-> (-> Number Number Number) (Listof Number) (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/zip-with f l1 l2)
  )

(: jwalsh/zip-with* (-> (-> Number Number Number) (Listof Number) (Listof Number) (Listof Number))) ;; TODO
(define (jwalsh/zip-with* f l1 l2)
  )

(: jwalsh/flatten (-> (Listof (Listof Number)) (Listof Number)))
(define (jwalsh/flatten l1)
  (cond
    [(null? l1) '()]
    [(list? (car l1)) (append (flatten (car l1)) (flatten (cdr l1)))]
    [else (cons (car l1) (flatten (cdr l1)))]))

(: jwalsh/flatten* (-> (Listof (Listof Number)) (Listof Number)))
(define (jwalsh/flatten* l1)
  (cond
    [(null? l1) '()]
    [(list? (car l1)) (append (flatten* (car l1)) (flatten* (cdr l1)))]
    [else (cons (car l1) (flatten* (cdr l1)))]))

; Examples
; Initially work with the set of test cases sufficient in Barliman to synthetically create the function definition
; Secondarily follow up with the contract definitions for any functions that implicitly relty on sort
(quote (define my-list2 (list 6 7 8 9 10))
       (define my-list3 (list 1 3 5 2 4 2 0))
       (append my-list2 my-list3) ;; (6 7 8 9 10 1 3 5 2 4 2 0)
       (reverse my-list3) ;; (0 2 4 2 5 3 1)
       (sort my-list3) ;; (0 1 2 2 3 4 5)
       (filter (lambda (x) (even? x)) my-list3) ;; (2 4 2 0)
       (map (lambda (x) (+ x 1)) my-list3) ;; (2 4 6 3 5 3 1)
       (foldl + 0 my-list3) ;; 17
       (foldr + 0 my-list3) ;; 17
       (foldl * 1 my-list3) ;; 0
       (zip my-list2 my-list3) ;; ((6 1) (7 3) (8 5) (9 2) (10 4) (1 2) (3 0))
       (unzip (zip my-list2 my-list3)) ;; ((6 7 8 9 10 1 3) (1 3 5 2 4 2 0))
       (zip-with + my-list2 my-list3) ;; (7 10 13 11 14 3 3)
       (zip-with* + my-list2 my-list3) ;; (7 10 13 11 14 3 3)
       )

;; Transformations and Recursion

(: jwalsh/frequencies (-> (Listof Number) (Listof (Listof Number))))
(define (jwalsh/frequencies l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([x (car l1)] [rest (cdr l1)])
       (cons (cons x (length (filter (lambda (y) (= x y)) rest)))
             (frequencies (filter (lambda (y) (not (= x y))) rest))))]))

(: jwalsh/permutations (-> (Listof Number) (Listof (Listof Number))))
(define (jwalsh/permutations l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([x (car l1)] [rest (cdr l1)])
       (append (map (lambda (l2) (cons x l2)) (permutations rest)) (permutations rest)))]))

; Examples
(quote (define my-list4 (list 1 2 1 4 1 6 1 8 1 10))
       (frequencies my-list4) ;; ((1 5) (2 1) (4 1) (6 1) (8 1) (10 1))
       (permutations my-list4) ;;
       )

(define jwalsh/friends (list '("John" "Mary" "Peter" "Jane" "Bob")))

(define jwalsh/pets (list (list 'dog 'fido) (list 'cat 'fluffy) (list 'fish 'nemo)))

; (struct pet ([species : Symbol] [name : Symbol]))

(define jwalsh/books
  (list (list 'title "The Hobbit")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1937)
        (list 'title "The Lord of the Rings")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1954)
        (list 'title "The Silmarillion")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1977)))

; (struct book ([title string] [author string] [year number]))

(define jwalsh/people
  (list (list 'name "John")
        (list 'age 30)
        (list 'name "Mary")
        (list 'age 25)
        (list 'name "Peter")
        (list 'age 27)
        (list 'name "Jane")
        (list 'age 22)
        (list 'name "Bob")
        (list 'age 35)))

(define jwalsh/philosophers
  (list (list 'name "Plato")
        (list 'born 428)
        (list 'died 348)
        (list 'name "Aristotle")
        (list 'born 384)
        (list 'died 322)
        (list 'name "Socrates")
        (list 'born 470)
        (list 'died 399)))

(define (jwalsh/person? x)
  (and (pair? x)
       (eq? (car x) 'person)
       (pair? (cdr x))
       (string? (cadr x))
       (integer? (caddr x))
       (integer? (cadddr x))
       (integer? (cddddr x))))

(define (jwalsh/person-name x)
  (cadr x))

(define (jwalsh/person-age x)
  (caddr x))

(define (jwalsh/person-born x)
  (cadddr x))

(define (jwalsh/person-died x)
  (cddddr x))

(struct person ([name : String] [age : Integer] [born : Integer] [died : Integer]))

#lang racket
(require "interpreter.scm")


; Tester

; General testing framework
(define test
  (lambda (filename expected-output)
    (if (eq? (interpret filename) expected-output)
        (string-append "Passed " filename)
        (string-append "Failed " filename
          ", ! Expected output: " (number->string expected-output)
            ", Interpreter output: " (symbol->string (interpret filename))))))

; Tests 1
(newline)(newline)
(print "     TESTS for Project 1     ")
(newline)
(test "Tests/1/test1.java" 150)
(test "Tests/1/test2.java" -4)
(test "Tests/1/test3.java" 10)
(test "Tests/1/test4.java" 16)
(test "Tests/1/test5.java" 220)
(test "Tests/1/test6.java" 5)
(test "Tests/1/test7.java" 6)
(test "Tests/1/test8.java" 10)
(test "Tests/1/test9.java" 5)
(test "Tests/1/test10.java" -39)
(test "Tests/1/test11.java" `error)
(test "Tests/1/test12.java" `error)
(test "Tests/1/test13.java" `error)
(test "Tests/1/test14.java" `error)
(test "Tests/1/test15.java" `true)
(test "Tests/1/test16.java" 100)
(test "Tests/1/test17.java" `false)
(test "Tests/1/test18.java" `true)
(test "Tests/1/test19.java" 128)
(test "Tests/1/test20.java" 12)
(test "Tests/1/test21.java" 30)
(test "Tests/1/test22.java" 11)
(test "Tests/1/test23.java" 1106)
(test "Tests/1/test24.java" 12)
(test "Tests/1/test25.java" 16)
(test "Tests/1/test26.java" 72)
(test "Tests/1/test27.java" 21)
(test "Tests/1/test28.java" 164)

; Tests 2
(newline)(newline)
(print "     TESTS for Project 2     ")
(newline)
(test "Tests/2/test01.java" 20)
(test "Tests/2/test02.java" 164)
(test "Tests/2/test03.java" 32)
(test "Tests/2/test04.java" 2)
(test "Tests/2/test05.java" `error)
(test "Tests/2/test06.java" 25)
(test "Tests/2/test07.java" 21)
(test "Tests/2/test08.java" 6)
(test "Tests/2/test09.java" (- 1))
(test "Tests/2/test10.java" 789)
(test "Tests/2/test11.java" `error)
(test "Tests/2/test12.java" `error)
(test "Tests/2/test13.java" `error)
(test "Tests/2/test14.java" 12)
(test "Tests/2/test15.java" 125)
(test "Tests/2/test16.java" 110)
(test "Tests/2/test17.java" 2000400)
(test "Tests/2/test18.java" 101)
(test "Tests/2/test19.java" `error)
(test "Tests/2/test20.java" 21)

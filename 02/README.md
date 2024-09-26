# 第二章習題
資工一 111210520 吳佳泰

---

## 作業內容
* **第三週(09/27)作業 :** HalfAdder、FullAdder、Add16、Inc16
* **第四週(10/04)作業 :** 

## 關於作業
* 作業獨立完成
* 電路圖整理在本檔案(README.md)和每個例題下方的超連結，使用[Google繪圖](https://docs.google.com/drawings/d/16axyYoLa7msynRIwtvtNS606HYFQQHoPoyoQr2v-9Pc/edit?hl=zh-tw)繪製(內部繪製之OR閘和XOR閘的圖片來源為[維基百科-OR_ANSI](https://zh.wikipedia.org/zh-tw/%E6%88%96%E9%97%A8#/media/File:OR_ANSI.svg)以及[維基百科-XOR_ANSI](https://commons.wikimedia.org/wiki/File:XOR_ANSI.svg))

## 參考資料
* [From Nand to Tetris](https://www.nand2tetris.org/)
* [CircuitVerse](https://circuitverse.org/)

## 作業詳情
* ### [HalfAdder](HalfAdder.hdl)
    |   a   |   b   |  sum  | carry |
    |:---: |:---: |:---: |:---:
    |   0   |   0   |   0   |   0   |
    |   0   |   1   |   1   |   0   |
    |   1   |   0   |   1   |   0   |
    |   1   |   1   |   0   |   1   | 

    ![](HalfAdder.jpg)

* ### [FullAdder](FullAdder.hdl)
    |   a   |   b   |   c   |  sum  | carry |
    |:---: |:---: |:---: |:---: |:---: 
    |   0   |   0   |   0   |   0   |   0   |
    |   0   |   0   |   1   |   1   |   0   |
    |   0   |   1   |   0   |   1   |   0   |
    |   0   |   1   |   1   |   0   |   1   |
    |   1   |   0   |   0   |   1   |   0   |
    |   1   |   0   |   1   |   0   |   1   |
    |   1   |   1   |   0   |   0   |   1   |
    |   1   |   1   |   1   |   1   |   1   |
 
    ![](FullAdder.jpg)

* ### [Add16](Add16.hdl)
    ![](Add16.jpg)

* ### [Inc16](Inc16.hdl)
    ![](Inc16.jpg)
{"changed":true,"filter":false,"title":"books_controller.rb","tooltip":"/Rails6-bookers2-debug-main/app/controllers/books_controller.rb","value":"class BooksController < ApplicationController\n\n  def show\n    @book = Book.find(params[:id])\n    @user = current_user\n    @books\n  end\n\n  def index\n    @books = Book.all\n    @user = current_user\n    @book = Book.new\n  end\n\n  def create\n    @book = Book.new(book_params)\n    @book.user_id = current_user.id\n    @user = current_user\n    if @book.save\n      redirect_to book_path(@book), notice: \"You have created book successfully.\"\n    else\n      @books = Book.all\n      render 'index'\n    end\n  end\n\n  def edit\n    @book = Book.find(params[:id])\n  end\n\n  def update\n    @book = Book.find(params[:id])\n    if @book.update(book_params)\n      redirect_to book_path(@book), notice: \"You have updated book successfully.\"\n    else\n      render \"edit\"\n    end\n  end\n\n  def delete\n    @book = Book.find(params[:id])\n    @book.destoy\n    redirect_to books_path\n  end\n\n  private\n\n  def book_params\n    params.require(:book).permit(:title, :body)\n  end\nend\n","undoManager":{"mark":42,"position":43,"stack":[[{"start":{"row":7,"column":21},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]},{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["@"]}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["b"],"id":3},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["o"]},{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":["o"]},{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["k"]},{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":["."]}],[{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"remove","lines":["."],"id":4}],[{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":[" "],"id":5},{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"insert","lines":["="]}],[{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"insert","lines":[" "],"id":6}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":["f"],"id":7},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["i"]},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["n"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["d"]}],[{"start":{"row":8,"column":16},"end":{"row":8,"column":18},"action":"insert","lines":["()"],"id":8}],[{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"insert","lines":["p"],"id":9},{"start":{"row":8,"column":18},"end":{"row":8,"column":19},"action":"insert","lines":["a"]},{"start":{"row":8,"column":19},"end":{"row":8,"column":20},"action":"insert","lines":["r"]},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["a"]},{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["m"]},{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["s"]}],[{"start":{"row":8,"column":23},"end":{"row":8,"column":25},"action":"insert","lines":["[]"],"id":10}],[{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":[":"],"id":11},{"start":{"row":8,"column":25},"end":{"row":8,"column":26},"action":"insert","lines":["i"]},{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"insert","lines":["d"]}],[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"remove","lines":["l"],"id":12},{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"remove","lines":["l"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"remove","lines":["a"]},{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"remove","lines":["."]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"remove","lines":["k"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"remove","lines":["o"]},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["o"]},{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["B"]}],[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["B"],"id":13},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["o"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["o"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["k"]}],[{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"remove","lines":["k"],"id":14},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"remove","lines":["o"]},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["o"]},{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["B"]}],[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["@"],"id":15},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["b"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["o"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["o"]},{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["k"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["."]}],[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["i"],"id":16},{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["d"]}],[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"remove","lines":["d"],"id":17},{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"remove","lines":["i"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"remove","lines":["."]},{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"remove","lines":["k"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"remove","lines":["o"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"remove","lines":["o"]},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"remove","lines":["b"]},{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["@"]}],[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["B"],"id":18},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["o"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["o"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["k"]}],[{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["."],"id":19},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["a"]},{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["l"]},{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["l"]}],[{"start":{"row":7,"column":21},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":20},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]},{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["@"]}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["u"],"id":21},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["s"]},{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":["e"]},{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["r"]}],[{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":[" "],"id":22},{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"insert","lines":["="]}],[{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"insert","lines":[" "],"id":23},{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":["c"]},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["u"]}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":14},"action":"remove","lines":["cu"],"id":24},{"start":{"row":8,"column":12},"end":{"row":8,"column":24},"action":"insert","lines":["current_user"]}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":[")"],"id":25},{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"remove","lines":["]"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"remove","lines":["d"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"remove","lines":["i"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"remove","lines":[":"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"remove","lines":["["]},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"remove","lines":["s"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["m"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"remove","lines":["a"]},{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"remove","lines":["r"]},{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":["a"]},{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"remove","lines":["p"]},{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"remove","lines":["("]},{"start":{"row":9,"column":15},"end":{"row":9,"column":16},"action":"remove","lines":["d"]},{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"remove","lines":["n"]},{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"remove","lines":["i"]}],[{"start":{"row":9,"column":12},"end":{"row":9,"column":13},"action":"remove","lines":["f"],"id":26}],[{"start":{"row":9,"column":12},"end":{"row":9,"column":13},"action":"insert","lines":["B"],"id":27},{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["o"]},{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"insert","lines":["o"]},{"start":{"row":9,"column":15},"end":{"row":9,"column":16},"action":"insert","lines":["k"]},{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"insert","lines":["."]},{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["n"]},{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":["e"]},{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"insert","lines":["w"]}],[{"start":{"row":14,"column":35},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":28},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]},{"start":{"row":15,"column":4},"end":{"row":15,"column":5},"action":"insert","lines":["@"]}],[{"start":{"row":15,"column":5},"end":{"row":15,"column":6},"action":"insert","lines":["u"],"id":29},{"start":{"row":15,"column":6},"end":{"row":15,"column":7},"action":"insert","lines":["s"]},{"start":{"row":15,"column":7},"end":{"row":15,"column":8},"action":"insert","lines":["e"]},{"start":{"row":15,"column":8},"end":{"row":15,"column":9},"action":"insert","lines":["r"]}],[{"start":{"row":15,"column":9},"end":{"row":15,"column":10},"action":"insert","lines":[" "],"id":30}],[{"start":{"row":15,"column":10},"end":{"row":15,"column":11},"action":"insert","lines":["="],"id":31}],[{"start":{"row":15,"column":11},"end":{"row":15,"column":12},"action":"insert","lines":[" "],"id":32},{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"insert","lines":["v"]}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"remove","lines":["v"],"id":33}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"insert","lines":["c"],"id":34},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"insert","lines":["u"]}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":14},"action":"remove","lines":["cu"],"id":35},{"start":{"row":15,"column":12},"end":{"row":15,"column":24},"action":"insert","lines":["current_user"]}],[{"start":{"row":46,"column":39},"end":{"row":46,"column":40},"action":"insert","lines":[","],"id":36}],[{"start":{"row":46,"column":40},"end":{"row":46,"column":41},"action":"insert","lines":[" "],"id":37},{"start":{"row":46,"column":41},"end":{"row":46,"column":42},"action":"insert","lines":[":"]},{"start":{"row":46,"column":42},"end":{"row":46,"column":43},"action":"insert","lines":["t"]},{"start":{"row":46,"column":43},"end":{"row":46,"column":44},"action":"insert","lines":["i"]}],[{"start":{"row":46,"column":44},"end":{"row":46,"column":45},"action":"insert","lines":["t"],"id":38},{"start":{"row":46,"column":45},"end":{"row":46,"column":46},"action":"insert","lines":["l"]},{"start":{"row":46,"column":46},"end":{"row":46,"column":47},"action":"insert","lines":["e"]}],[{"start":{"row":46,"column":46},"end":{"row":46,"column":47},"action":"remove","lines":["e"],"id":39},{"start":{"row":46,"column":45},"end":{"row":46,"column":46},"action":"remove","lines":["l"]},{"start":{"row":46,"column":44},"end":{"row":46,"column":45},"action":"remove","lines":["t"]},{"start":{"row":46,"column":43},"end":{"row":46,"column":44},"action":"remove","lines":["i"]},{"start":{"row":46,"column":42},"end":{"row":46,"column":43},"action":"remove","lines":["t"]}],[{"start":{"row":46,"column":42},"end":{"row":46,"column":43},"action":"insert","lines":["b"],"id":40},{"start":{"row":46,"column":43},"end":{"row":46,"column":44},"action":"insert","lines":["o"]},{"start":{"row":46,"column":44},"end":{"row":46,"column":45},"action":"insert","lines":["d"]},{"start":{"row":46,"column":45},"end":{"row":46,"column":46},"action":"insert","lines":["y"]}],[{"start":{"row":3,"column":34},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":41},{"start":{"row":4,"column":0},"end":{"row":4,"column":4},"action":"insert","lines":["    "]},{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"insert","lines":["@"]},{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"insert","lines":["u"]},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["s"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["e"]},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["r"]}],[{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":[" "],"id":42},{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":["="]}],[{"start":{"row":4,"column":11},"end":{"row":4,"column":12},"action":"insert","lines":[" "],"id":43},{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"insert","lines":["c"]},{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["u"]}],[{"start":{"row":4,"column":12},"end":{"row":4,"column":14},"action":"remove","lines":["cu"],"id":44},{"start":{"row":4,"column":12},"end":{"row":4,"column":24},"action":"insert","lines":["current_user"]}],[{"start":{"row":4,"column":24},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":45},{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]},{"start":{"row":5,"column":4},"end":{"row":5,"column":5},"action":"insert","lines":["@"]},{"start":{"row":5,"column":5},"end":{"row":5,"column":6},"action":"insert","lines":["b"]},{"start":{"row":5,"column":6},"end":{"row":5,"column":7},"action":"insert","lines":["o"]},{"start":{"row":5,"column":7},"end":{"row":5,"column":8},"action":"insert","lines":["o"]},{"start":{"row":5,"column":8},"end":{"row":5,"column":9},"action":"insert","lines":["k"]},{"start":{"row":5,"column":9},"end":{"row":5,"column":10},"action":"insert","lines":["s"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":10},"end":{"row":5,"column":10},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1661496259086}mn":13},"action":"insert","lines":[" "],"id":47},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["B"]}],[{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["o"],"id":48},{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"insert","lines":["o"]},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"insert","lines":["k"]},{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"insert","lines":["."]},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"insert","lines":["n"]},{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"insert","lines":["e"]},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"insert","lines":["w"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":21},"end":{"row":5,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1661496259086}
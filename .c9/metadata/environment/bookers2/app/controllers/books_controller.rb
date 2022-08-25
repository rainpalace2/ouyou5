{"changed":true,"filter":false,"title":"books_controller.rb","tooltip":"/bookers2/app/controllers/books_controller.rb","value":"class BooksController < ApplicationController\n  before_action :current_user, only: [:edit, :update]\n  \n  def new\n    @book = Book.new\n  end\n\n  def create\n    @book = Book.new(book_params)\n    @book.user_id = current_user.id\n    @user = current_user\n    if @book.save\n      flash[:notice] = \"You have created book successfully.\"\n      redirect_to book_path(@book)\n    else\n      @books = Book.all\n      render :index\n    end\n  end\n\n  def index\n    @books = Book.all\n    @user = current_user\n    @book = Book.new\n  end\n\n  def show\n    @book = Book.find(params[:id])\n    @user = current_user\n    @books = Book.new\n  end\n\n  def destroy\n    book = Book.find(params[:id])\n    book.destroy\n    redirect_to books_path\n    flash[:notice] = \"Book was successfully destroyed\"\n  end\n\n  def edit\n    @book = Book.find(params[:id])\n    if @book.user == current_user\n      render \"edit\"\n    else\n      redirect_to books_path\n    end\n  end\n\n  def update\n   @book = Book.find(params[:id])\n   @book.user_id = current_user.id\n   if @book.update(book_params)\n   redirect_to book_path(@book)\n     flash[:notice] = \"You have updated book successfully.\"\n   else\n     render :edit\n   end\n  end\n\n  private\n\n  def book_params\n    params.require(:book).permit(:title,:body)\n  end\n  \n  \n  \n\nend\n","undoManager":{"mark":25,"position":25,"stack":[[{"start":{"row":69,"column":0},"end":{"row":69,"column":1},"action":"insert","lines":["d"],"id":3}],[{"start":{"row":69,"column":0},"end":{"row":69,"column":1},"action":"remove","lines":["d"],"id":4}],[{"start":{"row":69,"column":0},"end":{"row":69,"column":1},"action":"insert","lines":["p"],"id":5},{"start":{"row":69,"column":1},"end":{"row":69,"column":2},"action":"insert","lines":["s"]}],[{"start":{"row":69,"column":1},"end":{"row":69,"column":2},"action":"remove","lines":["s"],"id":65},{"start":{"row":69,"column":0},"end":{"row":69,"column":1},"action":"remove","lines":["p"]}],[{"start":{"row":28,"column":23},"end":{"row":28,"column":24},"action":"remove","lines":["r"],"id":66},{"start":{"row":28,"column":22},"end":{"row":28,"column":23},"action":"remove","lines":["e"]},{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"remove","lines":["s"]},{"start":{"row":28,"column":20},"end":{"row":28,"column":21},"action":"remove","lines":["u"]},{"start":{"row":28,"column":19},"end":{"row":28,"column":20},"action":"remove","lines":["_"]},{"start":{"row":28,"column":18},"end":{"row":28,"column":19},"action":"remove","lines":["t"]},{"start":{"row":28,"column":17},"end":{"row":28,"column":18},"action":"remove","lines":["n"]},{"start":{"row":28,"column":16},"end":{"row":28,"column":17},"action":"remove","lines":["e"]},{"start":{"row":28,"column":15},"end":{"row":28,"column":16},"action":"remove","lines":["r"]},{"start":{"row":28,"column":14},"end":{"row":28,"column":15},"action":"remove","lines":["r"]},{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"remove","lines":["u"]},{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"remove","lines":["c"]}],[{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"insert","lines":["U"],"id":67},{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"insert","lines":["s"]},{"start":{"row":28,"column":14},"end":{"row":28,"column":15},"action":"insert","lines":["e"]},{"start":{"row":28,"column":15},"end":{"row":28,"column":16},"action":"insert","lines":["r"]},{"start":{"row":28,"column":16},"end":{"row":28,"column":17},"action":"insert","lines":["."]}],[{"start":{"row":28,"column":17},"end":{"row":28,"column":18},"action":"insert","lines":["f"],"id":68},{"start":{"row":28,"column":18},"end":{"row":28,"column":19},"action":"insert","lines":["i"]},{"start":{"row":28,"column":19},"end":{"row":28,"column":20},"action":"insert","lines":["n"]},{"start":{"row":28,"column":20},"end":{"row":28,"column":21},"action":"insert","lines":["d"]},{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"insert","lines":["'"]}],[{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"remove","lines":["'"],"id":69}],[{"start":{"row":28,"column":21},"end":{"row":28,"column":23},"action":"insert","lines":["()"],"id":70}],[{"start":{"row":28,"column":22},"end":{"row":28,"column":23},"action":"insert","lines":["p"],"id":71},{"start":{"row":28,"column":23},"end":{"row":28,"column":24},"action":"insert","lines":["a"]},{"start":{"row":28,"column":24},"end":{"row":28,"column":25},"action":"insert","lines":["r"]},{"start":{"row":28,"column":25},"end":{"row":28,"column":26},"action":"insert","lines":["a"]},{"start":{"row":28,"column":26},"end":{"row":28,"column":27},"action":"insert","lines":["m"]},{"start":{"row":28,"column":27},"end":{"row":28,"column":28},"action":"insert","lines":["s"]}],[{"start":{"row":28,"column":28},"end":{"row":28,"column":30},"action":"insert","lines":["[]"],"id":72}],[{"start":{"row":28,"column":29},"end":{"row":28,"column":30},"action":"insert","lines":[":"],"id":73},{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"insert","lines":["i"]},{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"insert","lines":["d"]}],[{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"remove","lines":["d"],"id":74},{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"remove","lines":["i"]}],[{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"insert","lines":["i"],"id":75},{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"insert","lines":["d"]}],[{"start":{"row":28,"column":33},"end":{"row":28,"column":34},"action":"remove","lines":[")"],"id":76},{"start":{"row":28,"column":32},"end":{"row":28,"column":33},"action":"remove","lines":["]"]},{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"remove","lines":["d"]},{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"remove","lines":["i"]},{"start":{"row":28,"column":29},"end":{"row":28,"column":30},"action":"remove","lines":[":"]},{"start":{"row":28,"column":28},"end":{"row":28,"column":29},"action":"remove","lines":["["]},{"start":{"row":28,"column":27},"end":{"row":28,"column":28},"action":"remove","lines":["s"]},{"start":{"row":28,"column":26},"end":{"row":28,"column":27},"action":"remove","lines":["m"]},{"start":{"row":28,"column":25},"end":{"row":28,"column":26},"action":"remove","lines":["a"]},{"start":{"row":28,"column":24},"end":{"row":28,"column":25},"action":"remove","lines":["r"]},{"start":{"row":28,"column":23},"end":{"row":28,"column":24},"action":"remove","lines":["a"]},{"start":{"row":28,"column":22},"end":{"row":28,"column":23},"action":"remove","lines":["p"]},{"start":{"row":28,"column":21},"end":{"row":28,"column":22},"action":"remove","lines":["("]},{"start":{"row":28,"column":20},"end":{"row":28,"column":21},"action":"remove","lines":["d"]},{"start":{"row":28,"column":19},"end":{"row":28,"column":20},"action":"remove","lines":["n"]},{"start":{"row":28,"column":18},"end":{"row":28,"column":19},"action":"remove","lines":["i"]},{"start":{"row":28,"column":17},"end":{"row":28,"column":18},"action":"remove","lines":["f"]},{"start":{"row":28,"column":16},"end":{"row":28,"column":17},"action":"remove","lines":["."]},{"start":{"row":28,"column":15},"end":{"row":28,"column":16},"action":"remove","lines":["r"]},{"start":{"row":28,"column":14},"end":{"row":28,"column":15},"action":"remove","lines":["e"]},{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"remove","lines":["s"]},{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"remove","lines":["U"]}],[{"start":{"row":28,"column":12},"end":{"row":28,"column":13},"action":"insert","lines":["c"],"id":77},{"start":{"row":28,"column":13},"end":{"row":28,"column":14},"action":"insert","lines":["u"]}],[{"start":{"row":28,"column":12},"end":{"row":28,"column":14},"action":"remove","lines":["cu"],"id":78},{"start":{"row":28,"column":12},"end":{"row":28,"column":24},"action":"insert","lines":["current_user"]}],[{"start":{"row":29,"column":21},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":79},{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]},{"start":{"row":30,"column":4},"end":{"row":30,"column":5},"action":"insert","lines":["@"]}],[{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["u"],"id":80},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["s"]},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["e"]},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"insert","lines":["r"]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"insert","lines":["s"]}],[{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"insert","lines":[" "],"id":81},{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":30,"column":12},"end":{"row":30,"column":13},"action":"insert","lines":[" "],"id":82}],[{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"insert","lines":["@"],"id":83},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["b"]},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"insert","lines":["o"]},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"insert","lines":["o"]}],[{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"insert","lines":["k"],"id":84},{"start":{"row":30,"column":18},"end":{"row":30,"column":19},"action":"insert","lines":["."]},{"start":{"row":30,"column":19},"end":{"row":30,"column":20},"action":"insert","lines":["u"]},{"start":{"row":30,"column":20},"end":{"row":30,"column":21},"action":"insert","lines":["s"]},{"start":{"row":30,"column":21},"end":{"row":30,"column":22},"action":"insert","lines":["e"]},{"start":{"row":30,"column":22},"end":{"row":30,"column":23},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":23},"end":{"row":30,"column":24},"action":"insert","lines":["s"],"id":85}],[{"start":{"row":30,"column":23},"end":{"row":30,"column":24},"action":"remove","lines":["s"],"id":86},{"start":{"row":30,"column":22},"end":{"row":30,"column":23},"action":"remove","lines":["r"]},{"start":{"row":30,"column":21},"end":{"row":30,"column":22},"action":"remove","lines":["e"]},{"start":{"row":30,"column":20},"end":{"row":30,"column":21},"action":"remove","lines":["s"]},{"start":{"row":30,"column":19},"end":{"row":30,"column":20},"action":"remove","lines":["u"]},{"start":{"row":30,"column":18},"end":{"row":30,"column":19},"action":"remove","lines":["."]},{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"remove","lines":["k"]},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"remove","lines":["o"]},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"remove","lines":["o"]},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"remove","lines":["b"]},{"start":{"row":30,"column":13},"end":{"row":30,"column":14},"action":"remove","lines":["@"]},{"start":{"row":30,"column":12},"end":{"row":30,"column":13},"action":"remove","lines":[" "]},{"start":{"row":30,"column":11},"end":{"row":30,"column":12},"action":"remove","lines":["="]},{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"remove","lines":[" "]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"remove","lines":["s"]},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"remove","lines":["r"]},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"remove","lines":["e"]},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"remove","lines":["s"]},{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"remove","lines":["u"]},{"start":{"row":30,"column":4},"end":{"row":30,"column":5},"action":"remove","lines":["@"]}],[{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"remove","lines":["  "],"id":87},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"remove","lines":["  "]},{"start":{"row":29,"column":21},"end":{"row":30,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":27,"column":18},"end":{"row":27,"column":19},"action":"insert","lines":["l"],"id":91},{"start":{"row":27,"column":19},"end":{"row":27,"column":20},"action":"insert","lines":["l"]}],[{"start":{"row":27,"column":18},"end":{"row":27,"column":19},"action":"remove","lines":["j"],"id":91}],[{"start":{"row":27,"column":17},"end":{"row":27,"column":18},"action":"insert","lines":["a"],"id":92},{"start":{"row":27,"column":18},"end":{"row":27,"column":19},"action":"insert","lines":["j"]}],[{"start":{"row":27,"column":33},"end":{"row":27,"column":34},"action":"remove","lines":[")"],"id":93},{"start":{"row":27,"column":32},"end":{"row":27,"column":33},"action":"remove","lines":["]"]},{"start":{"row":27,"column":31},"end":{"row":27,"column":32},"action":"remove","lines":["d"]},{"start":{"row":27,"column":30},"end":{"row":27,"column":31},"action":"remove","lines":["i"]},{"start":{"row":27,"column":29},"end":{"row":27,"column":30},"action":"remove","lines":[":"]},{"start":{"row":27,"column":28},"end":{"row":27,"column":29},"action":"remove","lines":["["]},{"start":{"row":27,"column":27},"end":{"row":27,"column":28},"action":"remove","lines":["s"]},{"start":{"row":27,"column":26},"end":{"row":27,"column":27},"action":"remove","lines":["m"]},{"start":{"row":27,"column":25},"end":{"row":27,"column":26},"action":"remove","lines":["a"]},{"start":{"row":27,"column":24},"end":{"row":27,"column":25},"action":"remove","lines":["r"]},{"start":{"row":27,"column":23},"end":{"row":27,"column":24},"action":"remove","lines":["a"]},{"start":{"row":27,"column":22},"end":{"row":27,"column":23},"action":"remove","lines":["p"]},{"start":{"row":27,"column":21},"end":{"row":27,"column":22},"action":"remove","lines":["("]},{"start":{"row":27,"column":20},"end":{"row":27,"column":21},"action":"remove","lines":["d"]},{"start":{"row":27,"column":19},"end":{"row":27,"column":20},"action":"remove","lines":["n"]},{"start":{"row":27,"column":18},"end":{"row":27,"column":19},"action":"remove","lines":["i"]},{"start":{"row":27,"column":17},"end":{"row":27,"column":18},"action":"remove","lines":["f"]}]]},"ace":{"folds":[],"scrolltop":195.5,"scrollleft":0,"selection":{"start":{"row":69,"column":0},"end":{"row":69,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":11,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1661341133378}
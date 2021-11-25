class SearchsController < ApplicationController
  def search                              # form_withを設置しているviewからユーザーが検索を実行
    @value = params['search']['value']    # @valueにviewから送られてきた検索ワードを格納
    @how = params['search']['how']        # @howにviewから送られてきた検索方法(完全一致など)を格納
    @datas = search_for(@how,@value)      # search_forメソッドを実行(引数に検索ワードと検索方法)
  end
  
  private
  
  def match(value) 
    #valueに一致するカラムのデータをnameカラムから探し一致するもの全てを取得している。match(完全一致)メソッドが実施されて、その結果が@datasに格納される
    Recipe.where(name: value)
  end
  
  def forward(value) 
    Recipe.where("name LIKE ?", "#{value}%") #前方一致
  end
  
  def backward(value)
    Recipe.where("name LIKE ?", "%#{value}") #後方一致
  end
  
  def partical(value)
    Recipe.where("name LIKE ?", "%#{value}%") #部分一致
  end
  
  def search_for(how, value)
    case how               #case文でhowの中身が`'match'である場合serach_forメソッドの中でさらにmatchメソッドを呼んでいる。
    when 'match'                 
      match(value)
    when 'forward'
      forward(value)
    when 'backward'
      backward(value)
    when 'partical'
      partical(value)
    end
  end
end

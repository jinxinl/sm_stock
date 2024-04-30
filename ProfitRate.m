function rate=ProfitRate(stock)
    rate=zeros(1,length(stock)-1);
    for i=1:(length(stock)-1)
        today_price=stock(i+1);
        past_price=stock(i);
        if past_price ==0
            rate(i)=NaN;
        else        
            rate(i)=(today_price-past_price)/past_price;
        end
    end
end
function [sum] = integral(inputarray_x,inputarray_y,lower_bound,upper_bound)
a=size(inputarray_x);b=size(inputarray_y);
if lower_bound<upper_bound & lower_bound>=min(inputarray_x) & upper_bound<=max(inputarray_x) & size(inputarray_x)==size(inputarray_y)
    need=lower_bound:(upper_bound-lower_bound)/100000:upper_bound;
    needarray=interp1(inputarray_x,inputarray_y,need);
    sum=0;
    for i=1:100000
        sum=sum+(needarray(i)+needarray(i+1))*(upper_bound-lower_bound)/200000;
    end
elseif a(2) ~= b(2)
    sum='�������롪���������������x��y����';
elseif lower_bound>upper_bound
    sum='�������롪�������Ͻ�Ӧ�����½�';
else
    sum='�������롪�����½�Ӧ������x�ķ�Χ��';
end
end


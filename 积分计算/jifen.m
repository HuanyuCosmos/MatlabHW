%���ӳ������ò�ֵ�������η�ʵ�ֻ������
function [value] = jifen(a,b,x,fun)

%xqΪ�����Ա���
%yqΪ��Ӧ����ֵ
%valueΪ�������֮�ͣ��ȼ��ڻ���ֵ
xq = a:(b-a)/1000:b;
yq = interp1(x,fun,xq,'spline');
value = 0;

%ѭ�����������
size_xq = size(xq);
for j=1:size_xq(2)-1
value = value+(yq(j)+yq(j+1))/2*(xq(j+1)-xq(j));
end

end

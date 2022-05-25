function varargout = funargn(varargin)
if nargin ==2
    if nargout == 1
    varargout{1} = varargin{1}*varargin{2};
    else
        if nargout == 2
            varargout{1} = varargin{1};
            varargout{2} = 3*varargin{2};
        end
    end
    
    else
    res = 0;
    for k =1:nargin
        res = res + varargin{k};
    end
end

function [o] = take_image(cam_num)    
    if LucamIsConnected(cam_num)
        data = LucamTakeSnapshot(cam_num);
        save('temp.mat', 'data');
        o = 0;
    end
    
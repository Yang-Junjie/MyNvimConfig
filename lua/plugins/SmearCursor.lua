return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- 核心功能：跨 Buffer 和跨行移动时产生丝滑拖尾
    smear_between_buffers = true,
    smear_between_lines = true,

    -- -- 颜色设置：你可以手动指定，也可以注释掉这一行让它自动跟随主题
    -- cursor_color = "#d3ebe9",

    -- 物理参数调优
    stiffness = 0.6,               -- 弹性系数：数值越大，光标“回弹”到位的速度越快
    trailing_stiffness = 0.3,      -- 拖尾长度：数值越小，尾巴拉得越长
    trailing_exponent = 2.0,       -- 拖尾衰减：数值越大，尾巴末端消失得越快
    
    -- 动画流畅度
    max_kept_frames = 50,          -- 最大保留帧数，增加这个值可以让长距离跳跃的动画更完整
  },
}

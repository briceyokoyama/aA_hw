document.addEventListener("DOMContentLoaded", function(){
    canvas = document.getElementById("mycanvas");
    ctx = canvas.getContext('2d');
    ctx.fillStyle = "green";
    // ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2*Math.PI)
    ctx.fill();
    ctx.strokeStyle = 'blue';
    ctx.lineWidth = 5;
    ctx.stroke();
});

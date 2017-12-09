document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById("mycanvas");
  canvasEl.height = 500;
  canvasEl.width = 500;

  // Creating square
  const ctx = canvasEl.getContext('2d');
  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 500, 500);

  // Creating circle
  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, (2 * Math.PI), true);
  ctx.strokeStyle = "red";
  ctx.lineWidth = 8;
  ctx.stroke();
  ctx.fillStyle = "black";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(400, 100, 20, 0, (2 * Math.PI), true);
  ctx.strokeStyle = "red";
  ctx.lineWidth = 8;
  ctx.stroke();
  ctx.fillStyle = "black";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(250, 250, 100, 0, Math.PI, false);
  ctx.stroke();
});

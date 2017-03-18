$(function () {
	var canvas = document.getElementById("canvas");
	var ctx = canvas.getContext('2d');
	ctx.strokeStyle = "#000";
	ctx.lineWidth = 10;
	ctx.beginPath();

	ctx.moveTo(0, 0);
	ctx.lineTo(70, 25);
	ctx.lineTo(0, 50);
	ctx.stroke();
	ctx.closePath();
	ctx.fillStyle = "#fff";
	ctx.fill();
});

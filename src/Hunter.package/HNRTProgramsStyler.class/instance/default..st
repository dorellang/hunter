styles
default: anElement
	<defaultStyleWithEdges: true>
	anElement trachelShape color: (self folderColorMap colorAt: anElement model folder);
		strokePaint: Color black;
		strokeWidth: 0.5.
	"anElement connectedEdges do: [ :anEdge | anEdge trachelShape allColor: Color lightGray ]"
	
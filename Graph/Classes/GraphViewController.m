//
//  GraphViewController.m
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "GraphViewController.h"
#import "Graph.h"
#import "Vertex.h"
#import "Stack.h"


@implementation GraphViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)viewDidAppear:(BOOL)animated {
    Graph *graph = [[[Graph alloc] init] autorelease];
    
    Vertex *vertexA = [[[Vertex alloc] initWithLabel:@"A"] autorelease]; 
    Vertex *vertexB = [[[Vertex alloc] initWithLabel:@"B"] autorelease];
    Vertex *vertexC = [[[Vertex alloc] initWithLabel:@"C"] autorelease];
    Vertex *vertexD = [[[Vertex alloc] initWithLabel:@"D"] autorelease];
    Vertex *vertexE = [[[Vertex alloc] initWithLabel:@"E"] autorelease];
    Vertex *vertexF = [[[Vertex alloc] initWithLabel:@"F"] autorelease];
    Vertex *vertexG = [[[Vertex alloc] initWithLabel:@"G"] autorelease];
    
    [graph addVertex:vertexA];
    [graph addVertex:vertexB];
    [graph addVertex:vertexC];
    [graph addVertex:vertexD];
    [graph addVertex:vertexE];
    [graph addVertex:vertexF];
    [graph addVertex:vertexG];
    
    [graph addEdgeForVertex:vertexA andVertex:vertexB];
    [graph addEdgeForVertex:vertexB andVertex:vertexC];
    [graph addEdgeForVertex:vertexC andVertex:vertexD];
    [graph addEdgeForVertex:vertexA andVertex:vertexE];
    [graph addEdgeForVertex:vertexA andVertex:vertexF];
    [graph addEdgeForVertex:vertexF andVertex:vertexG];
    
    [graph depthFirstSearch];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double gridItemSize = 128;
    const double gridItemSpace = 12;

    const gridSide = 2;
    const double gridSize = gridSide * gridItemSize + gridSide * gridItemSpace;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: gridSize,
          height: gridSize,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GridItem(
                    size: gridItemSize,
                    onTap: () {
                      context.go("/bio");
                    },
                    child: const Text("Bio"),
                  ),
                  const GridItem(
                    size: gridItemSize,
                    child: Text("Blog"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GridItem(
                    size: gridItemSize,
                    child: Text("Projects"),
                  ),
                  GridItem(
                    size: gridItemSize,
                    onTap: () {
                      context.go("/games");
                    },
                    child: const Text("Games"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.size,
    required this.child,
    this.onTap,
  });

  final double size;
  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(size / 10),
        ),
        child: Center(child: child),
      ),
    );
  }
}

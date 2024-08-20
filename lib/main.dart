import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('MainAxisSize'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainAxisSize()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Guid to MainAxisAlignment'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainAxisAlignmentRoute()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Guid to CrossAxisAlignment'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CrossAxisAlignmentRoute()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainAxisSize extends StatelessWidget {
  const MainAxisSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainAxisSize'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}



class MainAxisAlignmentRoute extends StatelessWidget {
  const MainAxisAlignmentRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainAxisAlignment'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.start'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisStartRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.start'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisStartRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.center'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisCenterRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.center'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisCenterRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.end'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisEndRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.end'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisEndRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.spaceBetween'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisSpaceBetweenRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.spaceBetween'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisSpaceBetweenRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.spaceEvenly'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisSpaceEvenlyRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.spaceEvenly'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisSpaceEvenlyRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column MainAxisAligmnent.spaceAround'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnMainAxisSpaceAroundRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row MainAxisAligmnent.spaceAround'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowMainAxisSpaceAroundRoute()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ColumnMainAxisStartRoute extends StatelessWidget {
  const ColumnMainAxisStartRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.start'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisStartRoute extends StatelessWidget {
  const RowMainAxisStartRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.start'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}

class ColumnMainAxisCenterRoute extends StatelessWidget {
  const ColumnMainAxisCenterRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.center'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisCenterRoute extends StatelessWidget {
  const RowMainAxisCenterRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.center'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}

class ColumnMainAxisEndRoute extends StatelessWidget {
  const ColumnMainAxisEndRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.end'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisEndRoute extends StatelessWidget {
  const RowMainAxisEndRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.end'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}

class ColumnMainAxisSpaceBetweenRoute extends StatelessWidget {
  const ColumnMainAxisSpaceBetweenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.spaceBetween'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisSpaceBetweenRoute extends StatelessWidget {
  const RowMainAxisSpaceBetweenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.spaceBetween'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}

class ColumnMainAxisSpaceEvenlyRoute extends StatelessWidget {
  const ColumnMainAxisSpaceEvenlyRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.spaceEvenly'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisSpaceEvenlyRoute extends StatelessWidget {
  const RowMainAxisSpaceEvenlyRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.spaceEvenly'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}

class ColumnMainAxisSpaceAroundRoute extends StatelessWidget {
  const ColumnMainAxisSpaceAroundRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column MainAxisAlignment.spaceAround'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowMainAxisSpaceAroundRoute extends StatelessWidget {


  const RowMainAxisSpaceAroundRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row MainAxisAlignment.spaceAround'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back'),),
    );
  }
}




class CrossAxisAlignmentRoute extends StatelessWidget {
  const CrossAxisAlignmentRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CrossAxisAlignment'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column CrossAxisAligmnent.start'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnCrossAxisStartRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row CrossAxisAligmnent.start'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowCrossAxisStartRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column CrossAxisAligmnent.center'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnCrossAxisCenterRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row CrossAxisAligmnent.center'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowCrossAxisCenterRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column CrossAxisAligmnent.end'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnCrossAxisEndRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row CrossAxisAligmnent.end'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowCrossAxisEndRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guide to Column CrossAxisAligmnent.stretch'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ColumnCrossAxisStretchRoute()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text('Guid to Row CrossAxisAligmnent.stretch'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowCrossAxisStretchRoute()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ColumnCrossAxisStartRoute extends StatelessWidget {
  const ColumnCrossAxisStartRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Column CrossAxisAlignment.start'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowCrossAxisStartRoute extends StatelessWidget {
  const RowCrossAxisStartRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Row CrossAxisAlignment.start'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class ColumnCrossAxisCenterRoute extends StatelessWidget {
  const ColumnCrossAxisCenterRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Column CrossAxisAlignment.center'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowCrossAxisCenterRoute extends StatelessWidget {
  const RowCrossAxisCenterRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Row CrossAxisAlignment.center'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class ColumnCrossAxisEndRoute extends StatelessWidget {
  const ColumnCrossAxisEndRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Column CrossAxisAlignment.end'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowCrossAxisEndRoute extends StatelessWidget {
  const RowCrossAxisEndRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Row CrossAxisAlignment.end'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class ColumnCrossAxisStretchRoute extends StatelessWidget {
  const ColumnCrossAxisStretchRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Column CrossAxisAlignment.stretch'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}

class RowCrossAxisStretchRoute extends StatelessWidget {
  const RowCrossAxisStretchRoute({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Row CrossAxisAlignment.stretch'),
      ),
      body: Container(
        color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 200),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
    );
  }
}



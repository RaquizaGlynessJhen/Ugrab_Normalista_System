import 'package:flutter/material.dart';

class PostLandingPage extends StatelessWidget {
  const PostLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.scale(
                scale: 1.5,
                child: const Image(
                  image: AssetImage(
                    'assets/imgs/landpage.png',
                  ),
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 320,
                height: 75,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the CustomerLoginPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomerLoginPage()),
                    );
                  },
                  child: const Text(
                    "Customer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 320,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the OwnerLoginPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OwnerLoginPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Owner",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerLoginPage extends StatelessWidget {
  const CustomerLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets buttonPadding = EdgeInsets.all(8.0);
    const double buttonHeight = 75.0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: buttonHeight,
              child: Padding(
                padding: buttonPadding,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Perform customer login logic
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: buttonHeight,
              child: Padding(
                padding: buttonPadding,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the CustomerCreateAccountPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomerCreateAccountPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerCreateAccountPage extends StatelessWidget {
  const CustomerCreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(labelText: 'ID Number'),
          ),
          const SizedBox(height: 9.0),
          const TextField(
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          const SizedBox(height: 9.0),
          const TextField(
            decoration: InputDecoration(labelText: 'Contact Number'),
          ),
          const SizedBox(height: 9.0),
          const TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const SizedBox(height: 9.0),
          ElevatedButton(
            onPressed: () {
              // Perform customer account creation logic
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }
}

class OwnerLoginPage extends StatelessWidget {
  const OwnerLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets buttonPadding = EdgeInsets.all(8.0);
    const double buttonHeight = 75.0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: buttonHeight,
              child: Padding(
                padding: buttonPadding,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Perform owner login logic
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: buttonHeight,
              child: Padding(
                padding: buttonPadding,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the OwnerCreateAccountPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OwnerCreateAccountPage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(255, 192, 0, 1),
                    ),
                    foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(52, 52, 59, 1),
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OwnerCreateAccountPage extends StatelessWidget {
  const OwnerCreateAccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          const SizedBox(height: 9.0),
          const TextField(
            decoration: InputDecoration(labelText: 'Stall Number'),
          ),
          const SizedBox(height: 9.0),
          const TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const SizedBox(height: 9.0),
          ElevatedButton(
            onPressed: () {
              // Perform customer account creation logic
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }
}

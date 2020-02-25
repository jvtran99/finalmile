import 'package:flutter/material.dart';

import './assets_filled_screen.dart';

void signIn(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    AssetDetailsFilled.routeName,
  );
}

class SignIn extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Container(
        width: 500,
        // color: Colors.red,
        padding: EdgeInsets.fromLTRB(30,10,30,30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              height: 300,
              child: Image.network(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ8ODQ0NDw0ODQ0PDQ8NEA8PFREXGBURFhUYHSgsGBolGxUWIjEhJSkuOi4uGiAzODMtNyktLisBCgoKDg0OGhAQGzclHyYtNzctMDUwNTcyMCw1NzU1KzcvKzU3KzcvLS8rLS0vLS8tLSsrLSstLTU1LTctLSstLf/AABEIALkBEAMBIgACEQEDEQH/xAAcAAEAAwEBAQEBAAAAAAAAAAAAAQYHBQgDBAL/xABHEAACAgECAwIGDgcHBQEAAAAAAQIDBAURBhIhBzETF0FRVHQIFCIyNWFxgZOUsbPR0hYjNFJykbJCc4KSoaPwJTNTYpUV/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAMEBQIB/8QAIBEBAAICAgIDAQAAAAAAAAAAAAECAxEEEiFRBTFhQf/aAAwDAQACEQMRAD8A3EEEgAAABAQBkgACASAAAAgkAAABDJAAAAAAABBIAAEASAAAAAgkAAAAIAAAkgkCCQAAAAgkEASAAIJAAEEgAAAIJAAAACCQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEMCQQAJBA3AkEEgAAAAIAk+GZlVUVytunCquC3nOclGKXxtn2ME9kXrdrycXToykqIVeHtgt0p2NtR386S+0DQ8jtc4erk4PN5mu9wx77I/NJR2Z8vHFw76XP6pk/kKDwV2L052Bj5mXlXVyyIKyFdMYJQg+5NyT3Z3vEHpvpmb/s/lAs2F2r6DkW10U5NtltsowrhHEyd5Sb6L3h1OJuN9M0mddeffKmd0HOtKm23eKezfuIvb5zhcG9lGn6RlrMrsuyLYxca/Dcm1bffJcqXUz/2SX7dp3q1n3gG6aRqdGbj1ZWNLwlF0eeufLKO8fkfVfOfsKn2U/AOmerr7WWwCrcQ9oWkaZke1c3IlVcoxnyKi+z3L7nvGLXkZZMTJhdVXdW967YRsg9mt4yW6ez+Jnmrt++HperY/2yPQ3CvwbgeqY33UQOqypa92j6Lp2TPEy8pwvrUXOEaLreXdbpNxi1vszucRavXgYeRmW+8orlNrztLovnZ5Pq0/N1u7Us6K8JOmFmZkt9/K5e9XnfmXxAet9L1CnLoqyceaspuip1zSa3i+7o+4/UYp7Hnijnru0i2XuqubIxd/LW2lZBfI2nt8b8xtQHO1vXcPT6vDZl9ePX3JzfWT8yXe38hU/HFw76XP6pk/kMj7edStu1qdEpPweNVXGuHkTkuaT+fp/IuumdhWnWY9FlmXmeEsqrnPkdKjzSim0t4Pp1As/ji4d9Ln9UyfyHT4d7QtJ1PIWNhXWXW8rm17WvglFd7cpRSRT/EHpfped/Oj8hb+BeA8LQo3LGlZbO9pzuu5HPlXdBcqXud9384HS4m4owdJqruz7XTXbPwcGq7Ld58re20E9uiK544eHPTJ/VMr8hXvZI/BuD64/uZlS7L+zDC1rAllZF+TVON061Gp1KOyS6+6i+oGneOHhz0yf1TK/IffA7VNCybq8ejJssutkoVwWJk7yk/8BWvEHpfped/mo/Id7g3sr07R8r23VZffaouMPDutqvfva5YrrsBfEwwUvtE4rlgQjj0J+2L4OSnt0rr32cvjlv3HePHbJaK1R5ckY6zaz763xfCvOxdPx2p223QjfPvVcN+sf4n/AKGZZnFWpq21LMyElZYklPZJKT6Hw4VlKeqYTk3KUsmtuT6ttvvLbkdluTOyyayqUpznJLwU+m8m9u/4zYrjwce3W/r+si18/IjtT2qkeLdUTT9uX9OvWe6+deU1TgrjCvUa1XZtXlwXu69+k1+/D8PIVLxU5PpdP0U/xK9RgYlFkZ16vVXbXLeM44eZupJ/wjLXj566p9/kSYrcjBbd/r9lvKJOHwnrNebj7xvryLKmoWzrrsqXNtunyzSa3R3DFtWazqWzS0WiJgAB46AAAPNnshfhmHq1X2s9Js85+yJxpR1XHsfvLcWPI/jjJpr7P5gbV2efAumeq1fYWIzrs2430t6ThVWZdNN1FMara7JqDUo/L3otH6ZaR6fi/TRA7p5+9kn+3ad6tZ94bhpuu4WXKUMXJpvlFbyjXYptLz7Iw/2Sf7dp3q1n3gFb0LjPiXGxaKcON7xq4ctLjhysjy7+SW3U/f8Ap/xf+7k/UJ/lNp7Kn/0DTP7iP2stoHjXivVM/NynfqKmsnkhHadTplyLfb3LXynrXhb4NwPVMb7uJ557fvh2Xq1H2yN60zUasPRMbKufLVRg0WTfxKqPQDLvZD8T/wDY0iqX7uRlbf7cH/V/ItfYnwwsPRlZdH9bqO91ia6qlx2rh/l6/wCIwSdOoa/qWRZRVLIysmdlzri4rlhv0W8mkklsvmLTHhfjdJJf/qJJJJLUtkl5El4XuA52q1W8M8RuVe6hRera13KWPP8As/Jytr5j1Dp+bXk01X1NSruhGyD86a3PK3E/CfEVdUszVKcqddKUZX35Echwi5dF79vbd/6mqex94o8PiW6ZbLe3E/WU7vq6G+5fwyf+qA43bpwPmW5a1PEpnkVzrjDIhXFznXKPdLlXVpryru2KlicfcUU1wqhPI5a4xhHfFbfKlslvynprO1CjGip5FtdEG9lKyagm/Nuz8P6U6Z6difWK/wAQPPD7SOKUm3ZckurbxOn9Jc+y/tayszMrwNS5Ju98tGRCPI1PyRkvLv16mpz4q0tJt52Jsk2/18H0/meZOHJK7iSiVHWM9Qcq+Xyx52918wGreyR+DcH1x/czMu4Q4s17BxnTpsLJUOcpNxxZXLnff1SNR9kj8G4Prj+5mfz2D61h42kzhkZNFM/bNjULLYwe2y67NgU3xicXf+K//wCfP8DTex/iDVtQry3qkZxlXOtVKdEqOjXXbddS2/pTpnp2J9Yr/E/TgaxiZMnHHyKb5RW8o12xm0vPsmB+4yTti/bcX1d/eM1soHaZoML5U5duQseuuDqk3TO1dZbpvl7vMW+FeKZomVTm0m+GYhnnCHwngesVfaegjENFxNPxsrHyXqVc1TZGxxWPanLbyJmjrj7SfSP9uf4FnnxbLeJrEz49SrcCYx1mLTrz7Whnmm738/4pfabphcaabkWwpqu5rLJcsI8kluzC7vfz/il9rJPjKWra3aNfSP5K9bRXrLT+xn/s5v8Ae1f0M0go3ZTpV+Ni223R5PbM4Tri/fcijtzNeTffuLyUOXMTmtML/DiYw1iQAFZZAAAK5xtwdia3jqjJUoyrblRfW9p1Sa26edPypljAGCX9gGTzPwefRyf2eemfNt8ex8/EBmen430Vhv4AxrhDsj1PSc6nMoz8Z8j2sr8HalbU/fQf/O/Y7naj2b5Gu5GNdVkVY6oqlXKM4Tk5Ny33WxpIA4vB2jT07TsTCnONksetQc4pqMnv3pM7JIAyjtG7KMnWdQebVlU0RdVdfJOucn7nfruvlO/xhwdm5+kYul4+TVQq4UwyLJRm1Yq4JbJLuTa36l4AGfdlvZy9C9s2XWwyL7+WMZwjKKjWuu3XytmgEgD8mq4FeXj3Y1q5qr651zT80lsZNwj2Q6hpWo4+dTnUSjTN81fJavCUy6Sg/lT/AJpM2QAZp2l9nuo67fW45lFGLRH9VRKFknzv305bdN/IUvxAZnp+N9FYb+AMA8QGZ6fjfRWF27PeybH0i9Zl9vtrKimq3y8ldW66yS8r+PyGkgCk9qPBVuu4uPj1XV0Om/wzlZGUk1yOOy2+UzbxAZvp+N9FYb+AMA8QGZ6fjfRWHa4O7JNT0jOpzKc/HfI9ra/B2pWVv30H/wA7zZQBCR88iiNkJQnFThNOMoyW6afemj6kAnyxnjnguWC5ZGMnPEk/dLvdO/kf/r8ZTD0vZVGScZJSjJNSi1umvMcn9FdL9Bw/q9f4Grg+SmtdXjbKz/HdrbpOmL8GfCmD/fr+llt4D4L8NZ7dzI/qlOUqKZL375uk5L934i/43Dun1TjZViY1dkHvGcKIRlF+dNLodNRS6LoiLPz5vvpGtwlwcHprv51Io7H9AGe0AAAACAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIJAEEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEEkEsAAAAAAAAAAAAAAAAAAAAAAAAACCQAAAAAAAAAAAAAAAAP/Z',
                // fit: BoxFit.cover,
              ),
            ),
            Text(
              'Connect your Account',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 40,),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people), hintText: 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock), hintText: 'Password'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Container(
                  width: 300,
                  child: FlatButton(
                    onPressed: () {
                      signIn(context);
                    },
                    child: Text('Connect'),
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

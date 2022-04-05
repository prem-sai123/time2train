import * as functions from "firebase-functions";
import axios from "axios";

const testApi = "http://testt2t.easycloud.in:8080/openbravo";
const apiBaseUrl = testApi;
const createUser = `${apiBaseUrl}/ws/in.easycloud.ttot.PostUser`;

exports.createObUser = functions.auth.user().onCreate(async (user) => {
  const displayName = user.displayName;
  const uid = user.uid;
  const email = user.email;

  try {
    const username = functions.config().api.username;
    const password = functions.config().api.password;
    const url = `${createUser}?l=${username}&p=${password}`;
    await axios.post(url, {
      data: {
        name: displayName,
        email: email,
        uid: uid,
        mobile: user.phoneNumber,
      },
    });
  } catch (e) {
    console.log(e);
  }
});

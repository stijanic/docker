// npm init
// tsc --init
// npm start
// npm install request lodash --save
// npm install @types/request lodash --save-dev
// npm install request request --save
// npm install @types/request request --save-dev
//console.log("Hello");
import { ApiService } from './apiservice';
import { Repository } from './repository';
import { User } from './user';
import * as _ from 'lodash';

let svc = new ApiService();
if (process.argv.length < 3) {
  console.log("Please passe the username as argument.")
} else {
  let userName = process.argv[2]; // "koushikkothagal"

  svc.getUserInformation(userName, (user: User) => {
    svc.getRepositories(userName, (repositories: Repository[]) => {
      user.repositories = _.take(_.sortBy(repositories, [(repository: Repository) => repository.forkCount * -1]), 5);
      console.log(user);
    });
  });
}

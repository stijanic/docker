import * as request from 'request';
import { Repository } from './repository';
import { User } from './user';

const OPTIONS: any = {
  headers: {
    'User-Agent': request
  },
  json: true
}

export class ApiService {
  getUserInformation(userName: string, callback: (user: User) => any) {

    request.get('https://api.github.com/users/' + userName, OPTIONS, (error: any, response: any, body: any) => {
      //console.log(error);
      //console.log(response);
      //let user = new User(JSON.parse(body));
      let user = new User(body);
      callback(user);
      //console.log(user);
    })
  }

  getRepositories(userName: string, callback: (repositories: Repository[]) => any) {
    request.get('https://api.github.com/users/' + userName + '/repos', OPTIONS, (error: any, response: any, body: any) => {
      //console.log(error);
      //console.log(response);
      //let user = new User(JSON.parse(body));
      callback(body.map((repository: any) => new Repository(repository)));
      //console.log(user);
    })
  }
}

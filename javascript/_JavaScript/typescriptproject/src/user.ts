import { Repository } from "./repository";

export class User {
  login!: string;
  fullName!: string;
  repositoryCount!: string;
  followerCount!: number;
  repositories?: Repository[];

  constructor(userReponse: any) {
    this.login = userReponse.login;
    this.fullName = userReponse.name;
    this.repositoryCount = userReponse.public_repos;
    this.followerCount = userReponse.followers;
    //this.xxx = userReponse.xxx;
  }
}

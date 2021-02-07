export class Repository {
  name!: string;
  description!: string;
  url!: string;
  size!: number;
  forkCount!: number;

  constructor(repository: any) {
    this.name = repository.name;
    this.description = repository.description;
    this.url = repository.html_url;
    this.size = repository.size;
    this.forkCount = repository.forks;
  }
}

# terraform-poc

Experimenting terraform

Esse repositorio tem como objetivo experimentar terraform.

## Requisitos:

-   [CLI do terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) instalado localmente
-   AccessKeyId e SecretAccessKey do AWS - [AWS - Minhas credenciais de segurança](https://us-east-1.console.aws.amazon.com/iam/home#/security_credentials)

-   [Extensão da AWS pro vscode](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)

## Passos:

1. Faça login no AWS do vscode, crie um profile chamado 'vscode' e coloque suas credenciais (deverá ser salvo em algum local como ~/.aws/credentials)

2. [Crie um par de chaves do EC2](https://us-east-1.console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:) e faça o download do par de chaves.

3. Renomeie a chave para `mtckey.pem`, Mova a chave para o diretório de SSH, altere as permissões e crie uma chave publica:

```sh
$ mv ~/Downloads/mtckey.pem ~/.ssh/mtckey.pem
$ chmod 400 ~/.ssh/mtckey.pem
$ ssh-keygen -y -f ~/.ssh/mtckey.pem > ~/.ssh/mtckey.pub
```

Agora na raiz desse repositório:

```sh
$ terraform init
```

após isso, valide as configurações:

```sh
$ terraform validate
```

caso receba uma mensagem de sucesso, você pode criar a instância usando:

```sh
$ terraform apply -auto-approve
```

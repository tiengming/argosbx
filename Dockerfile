# 动态锚点：由 GitHub Actions 自动更新并锁定基础镜像的绝对 SHA256 哈希值
FROM ygkkk/argosbx@sha256:5b1ce74814f93296ee849489b2f97df73bad3be3137d18f7ea4688081cb15990

# 保持无交互构建
ENV DEBIAN_FRONTEND=noninteractive
# 采用协调世界时，消除代理节点的地域性时区特征
ENV TZ=UTC

# 系统端口声明（供 PaaS 平台自动探测，实际运行端口以你在 Northflank 配置的变量为准）
EXPOSE 443

# 如果未来你需要将仓库中的自定义文件覆盖到容器内，可取消下方注释
# COPY custom-config.json /etc/config.json
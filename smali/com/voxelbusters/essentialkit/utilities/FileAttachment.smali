.class public Lcom/voxelbusters/essentialkit/utilities/FileAttachment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mimeType:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/FileAttachment;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p1

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/defines/CommonDefines;->SHARING_DIR:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/voxelbusters/essentialkit/utilities/FileUtil;->createLocalCacheFileUri(Landroid/content/Context;[BILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;

    invoke-direct {p1, p0, p2}, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object p1
.end method

.method public static create(Landroid/net/Uri;Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/FileAttachment;
    .locals 1

    .line 2
    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;

    invoke-direct {v0, p0, p1}, Lcom/voxelbusters/essentialkit/utilities/FileAttachment;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

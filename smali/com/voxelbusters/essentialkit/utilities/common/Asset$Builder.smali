.class public Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/utilities/common/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/utilities/common/Asset;
    .locals 4

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/Asset;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/utilities/common/Asset;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/voxelbusters/essentialkit/utilities/common/a;)V

    return-object v0
.end method

.method public withFilePath(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public withUri(Landroid/net/Uri;)Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/Asset$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.class public Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
.end annotation


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get bytes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->bytes:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->bytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

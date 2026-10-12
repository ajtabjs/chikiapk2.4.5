.class public Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;


# instance fields
.field private data:Lorg/json/JSONObject;

.field private isReadDirty:Z

.field private isWriteDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public clearDirtyFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isReadDirty:Z

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isWriteDirty:Z

    return-void
.end method

.method public getDataAsJSONObject()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "MemoryDataStore"

    const-string v1, "Failed creating json object from existing data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isReadDirty:Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isReadDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isReadDirty:Z

    return v0
.end method

.method public isWriteDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isWriteDirty:Z

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;->isWriteDirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed setting data for key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MemoryDataStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

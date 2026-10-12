.class public Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;
    }
.end annotation


# instance fields
.field public final TAG_KEY:Ljava/lang/String;

.field public final VERSION_CODE_KEY:Ljava/lang/String;

.field private dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

.field private isWriteDirty:Z

.field private meta:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cpnp-snapshot-tag-key"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->TAG_KEY:Ljava/lang/String;

    const-string v0, "cpnp-snapshot-version-code-key"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->VERSION_CODE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;JI)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->meta:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData$Meta;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->load(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->isWriteDirty:Z

    return-void
.end method


# virtual methods
.method public clearDirtyFlags()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->clearDirtyFlags()V

    return-void
.end method

.method public copy(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getDataAsJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->load(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SnapshotData"

    const-string v0, "Failed copying from other snapshotdata!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->clear()V

    :goto_0
    return-void
.end method

.method public getChangedKeys(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getKeys(Z)Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getKeys(Z)Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getKeys(Z)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string v3, "cpnp-snapshot-tag-key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cpnp-snapshot-version-code-key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getTag()J
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    const-string v1, "cpnp-snapshot-tag-key"

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->hasKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSameTag(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getTag()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getTag()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWriteDirty()Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->isWriteDirty()Z

    move-result v0

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->init(Lorg/json/JSONObject;)V

    return-void
.end method

.method public load([B)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->CHAR_SET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->init(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->init(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->init(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setTag(J)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-string p1, "cpnp-snapshot-tag-key"

    invoke-interface {v0, p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVersionCode(I)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    new-instance v1, Ljava/lang/Long;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string p1, "cpnp-snapshot-version-code-key"

    invoke-interface {v0, p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v0}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getDataAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "cpnp-snapshot-tag-key"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "cpnp-snapshot-version-code-key"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateFrom(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getKeys(Z)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    iget-object v3, p1, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->dataStore:Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;

    invoke-interface {v3, v1}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;


# instance fields
.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private isReadDirty:Z

.field private isWriteDirty:Z

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->getSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private getSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isWriteDirty:Z

    return-void
.end method

.method public clearDirtyFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isReadDirty:Z

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isWriteDirty:Z

    return-void
.end method

.method public getDataAsJSONObject()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isReadDirty:Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isReadDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isReadDirty:Z

    return v0
.end method

.method public isWriteDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isWriteDirty:Z

    return v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0}, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value for removed element : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PersistentDataStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed setting key value for : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersistentDataSnapshot"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToLong(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;->isWriteDirty:Z

    return-void
.end method

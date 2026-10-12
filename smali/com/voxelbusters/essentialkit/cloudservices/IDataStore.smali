.class public interface abstract Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearDirtyFlags()V
.end method

.method public abstract getDataAsJSONObject()Lorg/json/JSONObject;
.end method

.method public abstract getKeys()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasKey(Ljava/lang/String;)Z
.end method

.method public abstract isReadDirty()Z
.end method

.method public abstract isWriteDirty()Z
.end method

.method public abstract load(Lorg/json/JSONObject;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

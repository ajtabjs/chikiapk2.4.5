.class public Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;)V
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getDetails(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundProcessingTaskDetails;

    return-object p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/ProxyTaskDetailsCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

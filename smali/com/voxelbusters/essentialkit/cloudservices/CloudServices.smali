.class public Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;
.implements Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;


# instance fields
.field private final BASE_64_PREFIX:Ljava/lang/String;

.field private final CLOUD_SERVICES_VERSION_CODE:I

.field private final TAG:Ljava/lang/String;

.field private auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field private backupData:Ljava/lang/String;

.field private changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

.field private context:Landroid/content/Context;

.field private currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

.field private currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private currentPlayerId:Ljava/lang/String;

.field private externalDataChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IExternalDataChangedListener;

.field private fetchedBakcups:Z

.field private isSyncronizing:Z

.field private lastSyncTimestamp:J

.field private localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

.field private previousPlayerId:Ljava/lang/String;

.field private snapshotLoader:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;

.field private final snapshotPrefixName:Ljava/lang/String;

.field private syncronizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private userChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOnUserChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cpnp-snapshot"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->snapshotPrefixName:Ljava/lang/String;

    const-string v0, "CloudServices"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->CLOUD_SERVICES_VERSION_CODE:I

    const-string v0, "BASE64"

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->BASE_64_PREFIX:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->lastSyncTimestamp:J

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->previousPlayerId:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->backupData:Ljava/lang/String;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->lastSyncTimestamp:J

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;

    const-string v2, "CloudServicesLocalCopy"

    invoke-direct {v1, p1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/PersistentDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->snapshotLoader:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->getInstance(Landroid/content/Context;)Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p1, p0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->AddListener(Lcom/voxelbusters/essentialkit/socialauth/IAuthenticationListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->fetchedBakcups:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->fetchedBakcups:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->startOpeningSnapshot()V

    return-void
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->loadSnapshotsBackup(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)J
    .locals 2

    iget-wide v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->lastSyncTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;J)J
    .locals 0

    iput-wide p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->lastSyncTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;JLcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->closeSnapshot(JLcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->continueOpeningSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->backupData:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->loadSnapshotContents(Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V

    return-void
.end method

.method private closeSnapshot(JLcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;)V
    .locals 9

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v0, :cond_2

    const-string v0, "Preparing to commit snapshot..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Past played Time : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current Session Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    add-long/2addr v0, p1

    iget-object v8, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getTag()J

    move-result-wide v5

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->isWriteDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New changes found... committing..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v3}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v4, v2, v3}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setTag(J)V

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setVersionCode(I)V

    invoke-interface {v8}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->toString(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->CHAR_SET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Committed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v3, v4}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total Played Time - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Played time for this session - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    const-string p1, "Closing snapshot..."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v7

    invoke-interface {v7, v8, v2}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/voxelbusters/essentialkit/cloudservices/e;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/voxelbusters/essentialkit/cloudservices/e;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;JLcom/google/android/gms/games/SnapshotsClient;Lcom/google/android/gms/games/snapshot/Snapshot;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_0

    :cond_2
    const-string p1, "Open snapshot before saving."

    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ICloseSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private continueOpeningSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 9

    const-string v0, "Found conflicting keys : "

    const-string v1, "Updated local Copy with server copy : "

    const-string v2, "Local Copy : "

    const-string v3, "External Copy : "

    :try_start_0
    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v4

    new-instance v5, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v6, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;

    invoke-direct {v6}, Lcom/voxelbusters/essentialkit/cloudservices/MemoryDataStore;-><init>()V

    invoke-direct {v5, v6}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/IDataStore;)V

    invoke-virtual {v5, v4}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->load([B)V

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v5, v4}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->hasSameTag(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    sget-object v6, Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;->InitialSync:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;->UserChange:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    if-ne v4, v6, :cond_2

    :cond_0
    const-string v4, "Server version tag[%d] is different from local version tag[%d]"

    invoke-virtual {v5}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getTag()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v7}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getTag()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getChangedKeys(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;Z)Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v2, v5}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->updateFrom(Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Change reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->externalDataChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IExternalDataChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IExternalDataChangedListener;->onChange(Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "No external data changed listener found. Set one with setExternalDataChangedListener"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onSuccess(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while reading Snapshot. Try again later..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    return-object v0
.end method

.method private getSnapshotName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cpnp-snapshot-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialise(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;Z)V
    .locals 1

    const-string v0, "Connecting..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "Not allowed to force relogin."

    invoke-virtual {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->onSigninFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices$$ExternalSyntheticLambda0;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Z)V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;->onSuccess()V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadSnapshotContents(Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;",
            "Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading snapshot : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->snapshotLoader:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;

    invoke-interface {v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/voxelbusters/essentialkit/cloudservices/l;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/voxelbusters/essentialkit/cloudservices/l;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lorg/json/JSONObject;Ljava/util/List;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;)V

    const/4 p1, 0x3

    invoke-virtual {v1, v8, v0, p1, v9}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->openSnapshot(Ljava/lang/String;ZILcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsContentsListener;->onSuccess(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private loadSnapshotsBackup(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LoadSnapshots"

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->snapshotLoader:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;

    new-instance v2, Lcom/voxelbusters/essentialkit/cloudservices/k;

    invoke-direct {v2, p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/k;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IActionCompleteListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotLoader;->loadSnapshots([Ljava/lang/String;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ILoadSnapshotsListener;)V

    return-void
.end method

.method private openSnapshot(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V
    .locals 3

    const-string v0, "Opening snapshot..."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;->ServerSync:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Player not available!"

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->previousPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;->InitialSync:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->previousPlayerId:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;->UserChange:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->changeReason:Lcom/voxelbusters/essentialkit/cloudservices/ExternalChangeReason;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->load(Lorg/json/JSONObject;)V

    :cond_2
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->previousPlayerId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->getSnapshotName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->getSnapshotClient()Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v2, :cond_3

    const-string v0, "Already opened the snapshot. Yet to get saved."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentOpenedSnapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-direct {p0, v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->continueOpeningSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v2}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/voxelbusters/essentialkit/cloudservices/g;

    invoke-direct {v2, p0, v1, p1}, Lcom/voxelbusters/essentialkit/cloudservices/g;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;Lcom/google/android/gms/games/SnapshotsClient;Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showSavedGamesUI()V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "Saved Slots"

    invoke-interface {v0, v3, v1, v1, v2}, Lcom/google/android/gms/games/SnapshotsClient;->getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/cloudservices/i;

    invoke-direct {v1, p0}, Lcom/voxelbusters/essentialkit/cloudservices/i;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private startOpeningSnapshot()V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/cloudservices/d;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/cloudservices/d;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->openSnapshot(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOpenSnapshotListener;)V

    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToBoolean(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getByteArray(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;-><init>([B)V

    return-object p1

    :cond_0
    const-string v0, "BASE64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->CHAR_SET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;-><init>([B)V

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Cloud Services"

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/ConvertUtil;->ToLong(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getSnapshot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ESSENTIAL_KIT_CLOUD_SERVICES_OTHER_SNAPSHOTS_BACKUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->backupData:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->hasKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$initialise$0$com-voxelbusters-essentialkit-cloudservices-CloudServices(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->auth:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->Authenticate(Z)V

    return-void
.end method

.method public onSigninFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

    return-void
.end method

.method public onSigninSuccessful(Lcom/google/android/gms/games/Player;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->userChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOnUserChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOnUserChangedListener;->onChange(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;->onSuccess()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentInitialiseListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;

    return-void
.end method

.method public onSignoutSuccessful()V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/SkipInCodeGenerator;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->currentPlayerId:Ljava/lang/String;

    return-void
.end method

.method public onSyncronizeFinished(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->isSyncronizing:Z

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;->onSuccess()V

    goto :goto_1

    :cond_0
    invoke-interface {v2, p1}, Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;->onFailure(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished syncronizing...  Error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeAllKeys()V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->getKeys(Z)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->removeKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ESSENTIAL_KIT_CLOUD_SERVICES_OTHER_SNAPSHOTS_BACKUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->backupData:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setByteArray(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    const-string v1, "BASE64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExternalDataChangedListener(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IExternalDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->externalDataChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IExternalDataChangedListener;

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->localSnapshot:Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;

    invoke-virtual {v0, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/SnapshotData;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserChangedListener(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOnUserChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->userChangedListener:Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IOnUserChangedListener;

    return-void
.end method

.method public declared-synchronized synchronize(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->synchronize(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized synchronize(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$ISyncronizeListener;Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->syncronizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->isSyncronizing:Z

    if-eqz p1, :cond_1

    const-string p1, "Scynronize is already progresss..."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    :try_start_1
    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->isSyncronizing:Z

    const-string p1, "Started syncronizing..."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    new-instance p1, Lcom/voxelbusters/essentialkit/cloudservices/b;

    invoke-direct {p1, p0}, Lcom/voxelbusters/essentialkit/cloudservices/b;-><init>(Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;)V

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/cloudservices/CloudServices;->initialise(Lcom/voxelbusters/essentialkit/cloudservices/ICloudServices$IInitialiseListener;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

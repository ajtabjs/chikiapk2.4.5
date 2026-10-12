.class public final Lcom/voxelbusters/essentialkit/gameservices/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/d0;->a:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p3, :cond_0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/d0;->a:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    new-instance p3, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;

    invoke-direct {p3, p1}, Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;-><init>([B)V

    invoke-interface {p2, p3}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;->onSuccess(Lcom/voxelbusters/essentialkit/utilities/common/BytesWrapper;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/d0;->a:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;

    const-string p2, "Unable to load image"

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/ILoadAssetListener;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

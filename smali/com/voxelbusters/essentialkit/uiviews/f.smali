.class public final Lcom/voxelbusters/essentialkit/uiviews/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    new-instance v8, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$200(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$300(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {v1, v8}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$102(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$100(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/DatePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/uiviews/f;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$400(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

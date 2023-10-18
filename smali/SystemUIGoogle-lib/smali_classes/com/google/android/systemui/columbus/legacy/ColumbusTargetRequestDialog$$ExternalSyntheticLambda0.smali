.class public final synthetic Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x2

    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

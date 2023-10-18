.class public final synthetic Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/IconController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/IconController;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v0, "Pending intent cancelled"

    const-string v1, "IconController"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/IconController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/IconController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

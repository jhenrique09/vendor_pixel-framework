.class public final Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field public mTouchOutside:Landroid/app/PendingIntent;


# virtual methods
.method public final onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTouchOutside:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;->mTouchOutside:Landroid/app/PendingIntent;

    return-void
.end method

.class public final Lcom/google/android/systemui/smartspace/IcuDateTextView$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mIsInteractive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->rescheduleTicker()V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$2;->this$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    sget p2, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    :goto_0
    return-void
.end method

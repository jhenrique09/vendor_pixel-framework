.class public final Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;

    sget-boolean v0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->DEBUG:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v2, v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceView;->mIsAodEnabled:Z

    return-void
.end method

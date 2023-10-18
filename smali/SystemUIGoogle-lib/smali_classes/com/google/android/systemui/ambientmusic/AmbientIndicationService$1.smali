.class public final Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->onUserSwitched()V

    return-void
.end method

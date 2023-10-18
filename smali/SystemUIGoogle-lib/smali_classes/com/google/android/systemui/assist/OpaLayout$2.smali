.class public final Lcom/google/android/systemui/assist/OpaLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$2;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$2;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    return-void
.end method

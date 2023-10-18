.class public final synthetic Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/WeatherSmartspaceDataProvider;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;->onSmartspaceTargetsUpdated(Ljava/util/List;)V

    return-void
.end method

package com.coui.appcompat.list;

/* JADX INFO: loaded from: classes.dex */
public interface ICardListSelectedItem {
    boolean isCardType();

    void refreshCardBg(int i10);

    void setConfigurationChangeListener(ConfigurationChangedListener configurationChangedListener);

    void setPositionInGroup(int i10);
}

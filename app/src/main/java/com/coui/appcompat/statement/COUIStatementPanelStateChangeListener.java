package com.coui.appcompat.statement;

import android.content.res.Configuration;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.unit.Dp;

/* JADX INFO: loaded from: classes.dex */
public interface COUIStatementPanelStateChangeListener {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Dp SCREN_DP_MINI_WIDTH = new Dp(b5.a.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD);
        private static final Dp SCREN_DP_SPLIT_HEIGHT = new Dp(UIUtil.MEDIUM_WIDTH_DP);
        private static final Dp SCREN_DP_DEFAULT_HEIGHT = new Dp(670);
        private static final Dp SCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT = new Dp(300);

        private Companion() {
        }

        public final Dp getSCREN_DP_DEFAULT_HEIGHT() {
            return SCREN_DP_DEFAULT_HEIGHT;
        }

        public final Dp getSCREN_DP_MINI_WIDTH() {
            return SCREN_DP_MINI_WIDTH;
        }

        public final Dp getSCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT() {
            return SCREN_DP_SMALL_LAND_SINGLE_LINE_HEIGHT;
        }

        public final Dp getSCREN_DP_SPLIT_HEIGHT() {
            return SCREN_DP_SPLIT_HEIGHT;
        }
    }

    public enum PanelStatusTypeEnum {
        INIT,
        NORMAL,
        SMALL_LAND,
        SPLIT_SCREEN,
        MINI,
        TINY
    }

    void initMINIContentView(Configuration configuration, PanelStatusTypeEnum panelStatusTypeEnum);

    void initNormalContentView(Configuration configuration, PanelStatusTypeEnum panelStatusTypeEnum);

    void initSmallLandContentView(Configuration configuration, PanelStatusTypeEnum panelStatusTypeEnum);

    void initSplitScreenContentView(Configuration configuration, PanelStatusTypeEnum panelStatusTypeEnum);

    void initTinyContentView(Configuration configuration, PanelStatusTypeEnum panelStatusTypeEnum);

    void updateMINIContentView(Configuration configuration);

    void updateNormalContentView(Configuration configuration);

    void updateSmallLandContentView(Configuration configuration);

    void updateSplitScreenContentView(Configuration configuration);

    void updateTinyContentView(Configuration configuration);
}

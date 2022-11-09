
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_pts_set_up_summary_history') }}

),

renamed as (

    select
        nsapm_pts_set_up_summary_id,
        _fivetran_deleted,
        _fivetran_synced,
        average,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        median,
        n_95th_percentile,
        nsapm_pts_set_up_summary_extid,
        parent_id,
        pts_user_id,
        standard_deviation,
        partition_date

    from source

)

select * from renamed

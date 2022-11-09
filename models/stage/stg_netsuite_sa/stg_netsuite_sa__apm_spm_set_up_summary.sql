
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_spm_set_up_summary') }}

),

renamed as (

    select
        apm_spm_set_up_summary_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_spm_set_up_summary_extid,
        average,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        median,
        n_95th_percentile,
        parent_id,
        spm_user_id,
        standard_deviation

    from source

)

select * from renamed

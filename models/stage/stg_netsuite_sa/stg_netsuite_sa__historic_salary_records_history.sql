
with source as (

    select * from {{ source('raw_netsuite_sa', 'historic_salary_records_history') }}

),

renamed as (

    select
        historic_salary_records_id,
        _fivetran_deleted,
        _fivetran_synced,
        bonus_amount_annual,
        date_bonus_depricated,
        date_bonus_effective,
        date_created,
        date_deleted,
        date_salary_depricated,
        date_salary_effective,
        historic_salary_records_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        salary_amount_annual,
        salarybonus_history_id,
        partition_date

    from source

)

select * from renamed
